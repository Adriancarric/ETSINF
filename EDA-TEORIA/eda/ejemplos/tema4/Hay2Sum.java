package ejemplos.tema4;
import librerias.estructurasDeDatos.modelos.MapOrdenado;
import librerias.estructurasDeDatos.jerarquicos.ABBMapOrdenado;


/**
 * Tema 4-S1, Problema 4: implementa un metodo estatico,   
 * generico e iterativo que, dados un array v de enteros 
 * y un entero k, determine si existen en  v dos numeros 
 * cuya suma sea k; usa un Map Ordenado como EDA auxiliar
 * 
 * @author (EDA) 
 * @version (Marzo 2016)
 */

public class Hay2Sum {

    public static void main(String[] args) {
        Integer[] a = new Integer[10];
        for (int i = 0; i < a.length; i++) {
            a[i] = a.length - i;
            System.out.printf("%d \t", a[i]);
        }
        System.out.println();
        System.out.println("Hay dos que suman 2? " + hayDosQueSuman(a, 2));
        System.out.println("Hay dos que suman 5? " + hayDosQueSuman(a, 5));
        System.out.println("Hay dos que suman 10? " + hayDosQueSuman(a, 10));
        System.out.println("Hay dos que suman 20? " + hayDosQueSuman(a, 20));
       
    }
    

    public static boolean hayDosQueSuman(Integer[] v, int k) {
        MapOrdenado<Integer, Integer> m;
        m = new ABBMapOrdenado<Integer, Integer>();
        for (int i = 0; i < v.length; i++) {
            m.insertar(v[i], i);
        }
        Integer min = m.recuperarMin(), max = m.recuperarMax();
        boolean esta = false;
        for (int i = 0; i < v.length / 2 && !esta; i++) {
            int suma = min + max;
            if (suma == k) { esta = true; }
            else if (suma < k) { min = m.sucesor(min); }
            else { max = m.predecesor(max); }
        }
        return esta;
    }
}
