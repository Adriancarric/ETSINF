
/**
 * class WrapperClassesUse.
 * 
 * @author LTP 
 * @version 2017-18
 */

public class WrapperClassesUse {        
    public static void main(String[] args) {            
		// Assignment of wrapper variables to elementary types 
        int i = new Integer(123456);		
		double d = new Double(1.23456);
		float f = new Float(12.3456);
		short s = new Short((short)123456);
		long l = new Long((long)123.456);
		char c = new Character('+');
		boolean b = new Boolean(true);
		byte by = new Byte((byte)123);
            
        // Writing elementary variables
		System.out.println("int i = " + i);
        System.out.println("double d  = " + d);
        System.out.println("float f = " + f);
        System.out.println("short s = " + s);
        System.out.println("long l = " + l);
        System.out.println("char c = " + c);
        System.out.println("boolean b = " + b);
        System.out.println("byte by = " + by);
               
		// Assignment of elementary values to wrapper variables
		Integer eI = 123456; 
        Double eD = 1.23456; 
        Float eF = (float)12.3456; 
        Short eS = (short)31000; 
        Long eL = (long)1234.56; 
        Character eC = '-'; 
        Boolean eB = false; 
        Byte eBY = (byte)123; 
            
        // Writing wrapper variables
		System.out.println("Integer I = " + eI);
        System.out.println("Double D = " + eD);
        System.out.println("Float F = " + eF);
        System.out.println("Short S = " + eS);
        System.out.println("Long L = " + eL);
        System.out.println("Character C = " + eC);
        System.out.println("Boolean B = " + eB);
        System.out.println("Byte BY = " + eBY);
    }    
}