
/**
 * PRGParseNum: Práctica 2 de PRG, curso 2015-16.
 * 
 * @author (professors IIP - PRG) 
 * @version (curs 2015-16)
 */
public class PRGParseNum {

    /************************** CODIGO INICIAL  **************************/

    public final static char PUNT = '.';  // Separador parte fraccionaria.
    public final static char COMA = ',';  // Separador parte fraccionaria.
    public final static char EXP1 = 'e';  // Separador parte exponencial.
    public final static char EXP2 = 'E';  // Separador parte exponencial.
    public final static int  BASE = 10;   // Base de numeración por defecto.

    /**
     * Devuelve el entero asociado al carácter dígito en c.
     * @param c: char.
     * @return int: valor del dígito.
     * PRECONDICIÓN: '9' >= c >= '0'
     */
    public static int parseDig(char c) {
        return c - '0';
        // alternativamente, se puede utilizar:
        // return Character.getNumericValue(c);
    }

    /************************ EJEMPLOS INICIALES *************************/    
    /** Devuelve la suma de los dígitos contenidos en una String.
     * @param s String s: Cadena de caracteres sobre los que se opera.
     * @return int. */
    public static int sumaDigitos(String s) {
        // Caso base: String vacía
        if (s.length() == 0) { return 0; }
        else {
            // Caso general: String no vacía. Tratar substring posterior.
            char c = s.charAt(0);
            if (c >= '0' && c <= '9') {
                return (c - '0') + sumaDigitos(s.substring(1));
            } 
            else { return sumaDigitos(s.substring(1)); }
        }
    }

    /** Devuelve la suma de los dígitos contenidos en una String.
     * Versión alternativa utilizando un parámetro posicional.
     * @param s String s: Cadena de caracteres sobre los que se opera.
     * @param pos: posición sobre la que se está trabajando en s.
     * @return int. */
    public static int sumaDigitos(String s, int pos) {
        // Caso base: String vacía
        if (pos >= s.length()) { return 0; }
        else {
            // Caso general: String no vacía. Tratar substring posterior.
            char c = s.charAt(pos);
            if (c >= '0' && c <= '9') {
                return (c - '0') + sumaDigitos(s, pos + 1);
            } 
            else { return sumaDigitos(s, pos + 1); }
        }
    }    

    /** Devuelve la suma de los dígitos contenidos en una String.
     * @param s String s: Cadena de caracteres sobre los que se opera.
     * @return int. */
    public static int sumaDigitos2(String s) {
        // Caso base: String vacía
        if (s.length() == 0) { return 0; }
        else {
            // Caso general: String no vacía. Tratar substring anterior.
            int len = s.length();
            char c = s.charAt(len - 1);
            if (c >= '0' && c <= '9') {
                return (c - '0') + sumaDigitos(s.substring(0, len - 1));
            } 
            else { return sumaDigitos(s.substring(0, len - 1)); }
        }
    }    

    /******************  PROBLEMA A: parseInt(String s) ******************/

    /** 
     * PRECONDICIÓN: s contiene un entero, >= 0, bien formado. 
     */
    public static int parseUnsignedInt(String s) {
        if(s.length() == 0) {
            return 0;
        } else { 
            char c = s.charAt(s.length() - 1);
            if (c >= '0' && c <= '9') {
                return (c - '0') + parseUnsignedInt(s.substring(0, s.length() - 1)) *10;
            } 
            else { return parseUnsignedInt(s.substring(0, s.length() - 1)) *10; }
        }
    }  

    /** 
     * PRECONDICIÓN: s contiene un entero, tal vez con signo, bien formado. 
     */    
    public static int parseInt(String s) {
        if(s.charAt(0) == '-') {return -1 * parseUnsignedInt(s.substring(1));
        } else { return parseUnsignedInt(s);}
    }    

    /****************  PROBLEMA B: parseDouble(String s) *****************/    

    /** 
     * PRECONDICIÓN: s contiene un número en coma flotante bien formado. */
    public static int posFracSep(String s) {
        if(s.length() == 0) {return -1;}
        else{
            if(s.charAt(0) != '.' || s.charAt(0) != ',') {return 1 + posFracSep(s.substring(1));}
            else{return 0 ;}
        }
    }

    /** 
     * PRECONDICIÓN: s, contiene los dígitos de la parte fraccionaria
     * de un valor double bien formado. 
     */
    public static double parseFrac(String s) {
        if(s.length() == 0) {return 0;}
        else{
            double num = s.charAt(0) - '0';
            return num * 0.1 + 0.1 * parseFrac(s.substring(1));
        }
    }

    /** 
     * PRECONDICIÓN: s contiene un double, bien formado, tal vez con signo, 
     * que puede tener (o no) parte fraccionaria. No contiene parte exponencial.
     */  
    public static double parseDouble(String s)   {
       int len = s.length();
       int posComa = posFracSep(s);
       String fraccion = s.substring(posComa + 1, len);
       return parseInt(s.substring(0, posComa)) + parseFrac(fraccion);
    }

    /*******************  AMPLIACIONES RECOMENDADAS  ********************/

}
