package ejemplos.tema4;
import librerias.estructurasDeDatos.modelos.MapOrdenado;
import librerias.estructurasDeDatos.jerarquicos.ABBMapOrdenado;
import librerias.estructurasDeDatos.modelos.ListaConPI; 

/**
 * Tema 4-S1, Problema 2: implementa un metodo estatico,   
 * generico e iterativo que, con la ayuda de un MapOrdenado,  
 * ordene los elementos (Comparable) de un array v 
 * 
 * @author (EDA) 
 * @version (Marzo 2016)
 */

public class OrdenaConMap {

    public static void main(String[] args) {
        Integer[] a = new Integer[10];
        for (int i = 0; i < a.length; i++) {
            a[i] = a.length - i;
            System.out.printf("%d \t", a[i]);
        }
        System.out.println();
        mapSort(a);
        for (int i = 0; i < a.length; i++) {
            System.out.printf("%d \t", a[i]);
        }
        System.out.println();
    }
    
    public static <C extends Comparable<C>> void mapSort(C[] v) {
        MapOrdenado<C, C> m = new ABBMapOrdenado<C, C>();
        for (int i = 0; i < v.length; i++) {
            m.insertar(v[i], v[i]);
        }
        // Recorrido del Map en orden Asc. de claves
        C x = m.recuperarMin(); 
        v[0] = x;
        for (int i = 1; i < v.length; i++) {
            x = m.sucesor(x);
            v[i] = x;
        }
        //Alternativamente:
     /* ListaConPI<C> l = m.claves();
        l.inicio();
        for (int i = 0; i < l.talla(); i++) {
            v[i] = l.recuperar();
            l.siguiente();
        }
      */
    }

}