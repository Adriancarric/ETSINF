package ejemplos.tema4;

import librerias.estructurasDeDatos.modelos.MapOrdenado;
import librerias.estructurasDeDatos.modelos.EntradaMap;
import librerias.estructurasDeDatos.jerarquicos.ABBMapOrdenado;
import librerias.estructurasDeDatos.modelos.ListaConPI; 
import librerias.estructurasDeDatos.lineales.LEGListaConPI; 

/**
 * Tema 4-S1, Problema 1: implementa un metodo estatico, generico  
 * e iterativo que devuelva una ListaConPI con las Entradas de un 
 * Map m ordenadas Asc.
 * 
 * Para que el metodo sea eficiente se usa un Map Ordenado, en 
 * lugar de un Map
 * 
 * @author (EDA) 
 * @version (Marzo 2016)
 */

public class ListaEnOrdenEntradasMap {

    public static void main(String[] args) {
        MapOrdenado<String, Integer> m = new ABBMapOrdenado<String, Integer>();
        m.insertar("tres", 3); m.insertar("dos", 2); 
        m.insertar("seis", 6); m.insertar("cuatro", 4); 
        m.insertar("uno", 1);
        ListaConPI<EntradaMap<String, Integer>> lpi = entradas(m);
        System.out.println("Lista de entradas ordenada:\n" + lpi.toString());
    }
        
    public static <C extends Comparable<C>, V> 
    ListaConPI<EntradaMap<C, V>> entradas(MapOrdenado<C, V> m) {
        ListaConPI<EntradaMap<C, V>> l;
        l = new LEGListaConPI<EntradaMap<C, V>>();
        // Obtenemos la 1era Entrada del Map Ordenado por
        // claves, i.e. la Entrada de clave minima del Map
        EntradaMap<C, V> e = m.recuperarEntradaMin();
        // Insertamos el 1er elemento de la lista de Entradas 
        // ordenada Asc. por clave
        l.insertar(e);
        
        // Para obtener las siguientes Entradas de la lista
        // resultado, recorremos el Map Ordenado por claves
        for (int i = 1; i < m.talla(); i++) {
            // Obtenemos la siguiente Entrada del Map Ordenado
            // por claves, i.e. el sucesor de la Entrada e
            e = m.sucesorEntrada(e.getClave());
            // Insertamos el siguiente elemento de la lista de  
            // Entradas ordenada Asc. por clave
            l.insertar(e);
        }
        return l;
    }

}
