/**************************************************************************
 * 
 * Departamento de Informática de Sistema y Computadores (DISCA)
 * Universidad Politécnica de Valencia.                         
 * 
 * Author: Sergio Sáez (ssaez@disca.upv.es)
 * 
 * File: f_lanzamiento.c
 *  
 * Description: 
 *      Contiene la fase de lanzamiento de instrucciones del algoritmo de
 *      Tomasulo con especulación
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 *************************************************************************/


#define f_lanzamiento_alum_C

/***** Includes ***********************************************/

#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>

#include "main.h"
#include "instrucciones.h"
#include "prediccion.h"
#include "presentacion.h"
#include "algoritmo.h"
#include "tipos.h"

/***************************************************************
 *
 * Func: fase_ISS
 *
 **************************************************************/

void fase_ISS_alum() {
    /*************************************/
    /*  Variables locales                */
    /*************************************/

    int s;
    marca_t b;

    /*************************************/
    /*  Cuerpo función                   */
    /*************************************/

    /* Decodificación */

#define I_OP IF_ISS_2.IR.codop
#define I_S1 IF_ISS_2.IR.Rfuente1
#define I_S2 IF_ISS_2.IR.Rfuente2
#define I_D IF_ISS_2.IR.Rdestino
#define I_INM IF_ISS_2.IR.inmediato
#define I_ETIQ IF_ISS_2.IR.etiqueta
#define I_PC IF_ISS_2.PC
#define I_ORDEN IF_ISS_2.orden
#define I_EXC IF_ISS_2.excepcion
#define I_PRED IF_ISS_2.prediccion


    /*** VISUALIZACIÓN ****/
    PC_ISS = I_PC;
    /**********************/

    /*** Si no sale correctamente hay que parar */

    if (Control_2.Cancelar || IF_ISS_2.ignorar) {
        Control_1.Parar = NO;
        return;
    } else if (Control_1.Cancelar || IF_ISS_2.cancelar) { /* Este ciclo está cancelado */
        /*** VISUALIZACIÓN ****/
        muestra_fase("X", I_ORDEN);
        /**********************/
        return;
    } else if (Control_1.Parar || Control_1.Excepcion) {
        /*** VISUALIZACIÓN ****/
        muestra_fase("i", I_ORDEN);
        /**********************/

        Control_1.Parar = SI;

        /* Si la instrucción anterior del mismo grupo se ha parado o
         * hay una excepción en el reorder buffer
         * entonces esta instrucción ni siquiera se intenta */

        return;
    } /* endif */

    /*** VISUALIZACIÓN ****/
    muestra_fase("I", I_ORDEN);
    /**********************/

    Control_1.Parar = SI;

    /*** Busca un hueco en la cola */

    if (RB_long < TAM_REORDER) {
        b = RB_fin;
    } else {
        return; /* No hay huecos en el ROB */
    }

    RB[b].excepcion = I_EXC;
    RB[b].prediccion = I_PRED;

    /*** Lanza la instruccion */

    switch (I_OP) {
        case OP_FP_L_D:
            /*** Busca un hueco en el tampón de lectura */
            for (s = INICIO_TAMPON_LECT; s <= FIN_TAMPON_LECT; s++)
                if (!TL[s].ocupado) break;

            if (s > FIN_TAMPON_LECT) return;
            /* No hay sitio en la estación de reserva */

            /*** Reserva el tampón de lectura */
            TL[s].ocupado = SI;
            TL[s].OP = I_OP;
            TL[s].rob = b;

            /*** Operando 1 (en Rint) ***/
            if (Rint[I_S1].rob == MARCA_NULA) {
                TL[s].Vj = Rint[I_S1].valor;
                TL[s].Qj = MARCA_NULA;
            } else if (RB[Rint[I_S1].rob].estado == WB) {
                TL[s].Vj = RB[Rint[I_S1].rob].valor;
                TL[s].Qj = MARCA_NULA;
            } else {
                TL[s].Qj = Rint[I_S1].rob;
            } /* endif */

            /*** Operando 2 ***/
            TL[s].Qk = MARCA_NULA;

            /*** Desplazamiento */
            TL[s].desplazamiento = I_INM;

            /*** Reserva la entrada del ROB */
            RB[b].ocupado = SI;
            RB[b].OP = I_OP;
            RB[b].dest = I_D;

            /*** Reserva del registro destino */
            if (inst_int(I_OP))
                Rint[I_D].rob = b; // OP_LD
            else
                Rfp[I_D].rob = b; // OP_FP_LD

	    /*** VISUALIZACION ***/
            TL[s].estado = PENDIENTE;
            TL[s].orden = I_ORDEN;
            TL[s].PC = I_PC;
            sprintf(TL[s].etiqueta, "%s", I_ETIQ);
            RB[b].orden = I_ORDEN;
            RB[b].PC = I_PC;
            RB[b].estado = EX;

            break;
        case OP_FP_S_D:
            /*** Busca un hueco en el tampón de escritura */

              /* INSERTAR CÓDIGO */
            for (s = INICIO_TAMPON_ESCR; s <= FIN_TAMPON_ESCR; s++)
                if (!TL[s].ocupado) break;

            if (s > FIN_TAMPON_ESCR) return;

            /*** Reserva el tampón de escritura */

              /* INSERTAR CÓDIGO */
            TL[s].ocupado = SI;
            TL[s].OP = I_OP;
            TL[s].rob = b;

            /*** Operando 1 (en Rint) ***/

            
              /* INSERTAR CÓDIGO */
            if (Rint[I_S1].rob == MARCA_NULA) {
                TE[s].Vj = Rint[I_S1].valor;
                TE[s].Qj = MARCA_NULA;
            } else if (RB[Rint[I_S1].rob].estado == WB) {
                TE[s].Vj = RB[Rint[I_S1].rob].valor;
                TE[s].Qj = MARCA_NULA;
            } else {
                TE[s].Qj = Rint[I_S1].rob;
            }

            /*** Operando 2 (en Rfp) ***/

              /* INSERTAR CÓDIGO */

            TE[s].Qk = MARCA_NULA;
            
            /*** Desplazamiento */

              /* INSERTAR CÓDIGO */
            TE[s].desplazamiento = I_INM;

	    /*** Reserva la entrada del ROB */

              /* INSERTAR CÓDIGO */

            RB[b].ocupado = SI;
            RB[b].OP = I_OP;
            RB[b].dest = s;
            
	    /*** VISUALIZACION ***/
            TE[s].estado = PENDIENTE;
            TE[s].orden = I_ORDEN;
            TE[s].PC = I_PC;
            sprintf(TE[s].etiqueta, "%s", I_ETIQ);
            /*** La instrucción de escritura se debe confirmar */
            TE[s].confirm = NO;
            TE[s].rob = b; /* En teoría, no hace falta para las stores. Se queda aquí por si es necesario en el simulador. */
            RB[b].orden = I_ORDEN;
            RB[b].PC = I_PC;
            RB[b].estado = EX; /* TE */

            break;
        case OP_FP_ADD_D:
        case OP_FP_SUB_D:
            /*** Busca un hueco en la estación de reserva */

              /* INSERTAR CÓDIGO */
            for (s = INICIO_RS_SUMREST; s <= FIN_RS_SUMREST; s++)
                if (!RS[s].ocupado) break;

            if (s > FIN_RS_SUMAREST) return;

            /*** Reserva la estación de reserva */

              /* INSERTAR CÓDIGO */
            RS[s].ocupado = SI;
            RS[s].OP = I_OP;
            RS[s].rob = b;

            /*** Operando 1 (en Rfp) ***/

              /* INSERTAR CÓDIGO */

            if (Rfp[I_S1].rob == MARCA_NULA) {
                RS[s].Vj = Rfp[I_S1].valor;
                RS[s].Qj = MARCA_NULA;
            } else if (RB[Rfp[I_S1].rob].estado == WB) {
                RS[s].Vj = RB[Rfp[I_S1].rob].valor;
                RS[s].Qj = MARCA_NULA;
            } else {
                RS[s].Qj = Rfp[I_S1].rob;
            }
            /*** Operando 2 (en Rfp) ***/

              /* INSERTAR CÓDIGO */
            if (Rfp[I_S2].rob == MARCA_NULA) {
                RS[s].Vk = Rfp[I_S2].valor;
                RS[s].Qk = MARCA_NULA;
            } else if (RB[Rfp[I_S2].rob].estado == WB) {
                RS[s].Vk = RB[Rfp[I_S2].rob].valor;
                RS[s].Qk = MARCA_NULA;
            } else {
                RS[s].Qk = Rfp[I_S2].rob;
            }

            /*** Reserva la entrada del ROB */

              /* INSERTAR CÓDIGO */

            RB[b].ocupado = SI;
            RB[b].OP = I_OP;
            RB[b].dest = I_D;

            
            /*** Reserva del registro destino */

              /* INSERTAR CÓDIGO */
           
              Rfp[I_D].rob = b;


	    /*** VISUALIZACION ***/
            RS[s].estado = PENDIENTE;
            RS[s].orden = I_ORDEN;
            RS[s].PC = I_PC;
            RB[b].orden = I_ORDEN;
            RB[b].PC = I_PC;
            RB[b].estado = EX;

            break;
        case OP_FP_MUL_D:
        case OP_FP_DIV_D:
            /*** Busca un hueco en la estación de reserva */

              /* INSERTAR CÓDIGO */
            for (s = INICIO_RS_MULTDIV; s <= FIN_RS_MULTDIV; s++)
                if (!RS[s].ocupado) break;

            if (s > FIN_RS_MULTDIV) return;

            /*** Reserva el operador virtual */

              /* INSERTAR CÓDIGO */
            RS[s].ocupado = SI;
            RS[s].OP = I_OP;
            RS[s].rob = b;
            
            /*** Operando 1 ***/

              /* INSERTAR CÓDIGO */

            if (Rfp[I_S1].rob == MARCA_NULA) {
                RS[s].Vj = Rfp[I_S1].valor;
                RS[s].Qj = MARCA_NULA;
            } else if (RB[Rfp[I_S1].rob].estado == WB) {
                RS[s].Vj = RB[Rfp[I_S1].rob].valor;
                RS[s].Qj = MARCA_NULA;
            } else {
                RS[s].Qj = Rfp[I_S1].rob;
            }
            
            /*** Operando 2 ***/

              /* INSERTAR CÓDIGO */
            if (Rfp[I_S2].rob == MARCA_NULA) {
                RS[s].Vk = Rfp[I_S2].valor;
                RS[s].Qk = MARCA_NULA;
            } else if (RB[Rfp[I_S2].rob].estado == WB) {
                RS[s].Vk = RB[Rfp[I_S2].rob].valor;
                RS[s].Qk = MARCA_NULA;
            } else {
                RS[s].Qk = Rfp[I_S2].rob;
            }

            /*** Reserva la entrada del ROB */

              /* INSERTAR CÓDIGO */
            RB[b].ocupado = SI;
            RB[b].OP = I_OP;
            RB[b].dest = I_D;

            /*** Reserva del registro destino */

              /* INSERTAR CÓDIGO */
            Rfp[I_D].rob = b;

	    /*** VISUALIZACION ***/
            RS[s].estado = PENDIENTE;
            RS[s].orden = I_ORDEN;
            RS[s].PC = I_PC;
            RB[b].orden = I_ORDEN;
            RB[b].PC = I_PC;
            RB[b].estado = EX;

            break;
        default:
            fprintf(stderr, "ERROR (%s:%d): Operacion no implementada\n", __FILE__, __LINE__);
            exit(1);
            break;
    } /* endswitch */

    /*** La instrucción se ha lanzado correctamente */

    Control_1.Parar = NO;
    RB_fin = (RB_fin + 1) % TAM_REORDER;
    RB_long++;

    return;

} /* end fase_ISS */
