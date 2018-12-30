
/**
 * Write a description of class pruebas here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class pruebas {
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

    public static int posFracSep(String s) {
        if(s.length() == 0) {return -1;}
        else{
            if(s.charAt(0) == '.' || s.charAt(0) == ',') {return 0;}
            else{return 1 + posFracSep(s.substring(1));}
        }
    }
}
