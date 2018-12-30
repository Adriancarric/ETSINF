import java.util.Locale;
/** Clase MedidaOrdenacion: Estudio empirico de costes de 
 *  los metodos de ordenacion.
 *  @author PRG ETSInf
 *  @version Year 2015-2016
 */
class MedidaOrdenacion {
    public static final int REPETICIONES = 50;
    public static final int MAXTALLA = 100000, INITALLA = 10000;
    public static final int INCRTALLA = 10000;
    public static final double NMS = 1e3;

    /* Genera un array de int de talla t con valores comprendidos entre 0 y t-1.
     * @param int la talla
     * @result int[] el array generado
     */
    private static int[] crearArrayAleatorio(int t) { 
        int[] a = new int[t];
        for (int i = 0; i < a.length; i++) {
            a[i] = (int) Math.floor(Math.random() * t);
        }
        return a;
    }

    /* Genera un array de int de talla t ordenado de forma creciente.
     * @param int la talla
     * @result int[] el array generado
     */
    private static int[] crearArrayOrdCreciente(int t) { 
        int[] a = new int[t];
        for (int i = 0; i < a.length; i++) {
            a[i] = i;
        }
        return a;
    }

    /* Genera un array de int de talla t ordenado de forma decreciente.
     * @param int la talla
     * @result int[] el array generado
     */
    private static int[] crearArrayOrdDecreciente(int t) { 
        int[] a = new int[t];
        for (int i = 0; i < a.length; i++) {
            a[i] = t - i;
        }
        return a;
    }

    public static void medidaSeleccion() { 
        long ti, tf, tt;
        System.out.println("# Busqueda lineal. Tiempos en microsegundos");
        System.out.printf("# Talla          Promedio\n");
        System.out.printf("#-------------------------------------\n");
        for (int t = INITALLA; t <= MAXTALLA; t += INCRTALLA) {
            tt = 0;
            for (int i = 0; i < REPETICIONES; i++) {
                int[] a = crearArrayAleatorio(t);
                ti = System.nanoTime();
                AlgoritmosMedibles.seleccion(a);
                tf = System.nanoTime();
                tt += (tf - ti);
            }
            double tPromed = (double) tt / REPETICIONES;
            System.out.printf(Locale.US, "%8d      %14.2f\n", 
                t, tPromed / NMS);

        }
    }

    public static void medidaInsercion() { 
        long ti, tf, tt;
        System.out.println("# Busqueda lineal. Tiempos en microsegundos");
        System.out.printf("# Talla        Peor   Mejor   Promedio\n");
        System.out.printf("#-------------------------------------\n");
        for (int t = INITALLA; t <= MAXTALLA; t += INCRTALLA) {
            tt = 0;
            for (int i = 0; i < REPETICIONES; i++) {
                int[] a = crearArrayOrdCreciente(t);
                ti = System.nanoTime();
                AlgoritmosMedibles.insercion(a);
                tf = System.nanoTime();
                tt += (tf-ti);
            }
            double tMejor = (double) tt / REPETICIONES;

            tt = 0;
            for (int i = 0; i < REPETICIONES; i++) {
                int[] a = crearArrayOrdDecreciente(t);
                ti = System.nanoTime();
                AlgoritmosMedibles.insercion(a);
                tf = System.nanoTime();
                tt += (tf-ti);
            }
            double tPeor = (double) tt / REPETICIONES;

            tt = 0;

            for (int i = 0; i < REPETICIONES; i++) {
                int[] a = crearArrayAleatorio(t);
                ti = System.nanoTime();
                AlgoritmosMedibles.insercion(a);
                tf = System.nanoTime();
                tt += (tf-ti);
            }
            double tPromed = (double) tt / REPETICIONES;

            tt = 0;
            
            System.out.printf(Locale.US, "%8d   %14.2f    %8.2f   %14.2f\n", 
                              t, tPeor / NMS, tMejor / NMS, tPromed / NMS);
        }
    }

    public static void medidaMergeSort() { 
        // Completar
    }

    public static void uso() {
        System.out.println("Uso: java MedidaOrdenacion numero_algoritmo");
        System.out.println("   Donde numero_algoritmo es:");
        System.out.println("   1 -> Insercion");
        System.out.println("   2 -> Seleccion");
        System.out.println("   3 -> MergeSort");
    }

    public static void main(String[] args) {
        if (args.length != 1) { uso(); }
        else {
            try {
                int a = Integer.parseInt(args[0]);
                switch (a) {
                    case 1: 
                    medidaInsercion();
                    break;
                    case 2: 
                    medidaSeleccion();
                    break;
                    case 3: 
                    medidaMergeSort();
                    break;
                    default: 
                    uso();
                }
            } catch (Exception e) {
                uso(); 
            }
        }
    }
}
