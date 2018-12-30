/** Clase MedidaOrdenacion: Estudio empirico de costes de 
 *  los metodos de ordenacion.
 *  @author PRG ETSInf
 *  @version Year 2015-2016
 */
class MedidaOrdenacion {
    // Constantes que definen los parametros de medida
  
    /* Genera un array de int de talla t con valores comprendidos entre 0 y t-1.
     * @param int la talla
     * @result int[] el array generado
     */
    private static int[] crearArrayAleatorio(int t) { 
        // Completar
        int[] a = {1}; 
        return a;
    }
  
    /* Genera un array de int de talla t ordenado de forma creciente.
     * @param int la talla
     * @result int[] el array generado
     */
    private static int[] crearArrayOrdCreciente(int t) { 
        // Completar
        int[] a = {1}; 
        return a;
    }

    /* Genera un array de int de talla t ordenado de forma decreciente.
     * @param int la talla
     * @result int[] el array generado
     */
    private static int[] crearArrayOrdDecreciente(int t) { 
        // Completar
        int[] a = {1}; 
        return a;
    }

    public static void medidaSeleccion() { 
        // Completar
    }

    public static void medidaInsercion() { 
        // Completar
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
