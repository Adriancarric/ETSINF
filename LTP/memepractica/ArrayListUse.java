import java.util.*;
import java.io.*;

/**
 * class ArrayListUse.
 * 
 * @author LTP
 * @version 2017-18
 */

public class ArrayListUse {       
    public static void main(String[] args) { 
        if (args.length != 1) {
			System.err.print("You must specify an argument: filename");
            System.exit(0);
        }
        
		// Creating File object, Scanner object, ArrayList object
		   File fd = new File(args[0]);
		   Scanner sc = null;
		   ArrayList<String> list = new ArrayList<String>();       
        try {
           sc = new Scanner(fd);
        } 
        catch ( FileNotFoundException e ) {
            System.err.println("File does not exists " + e.getMessage());
            System.exit(0);
        }
                
	    // Reading file, adding lines to the list
		
        while ( sc.hasNext() ) {
            list.add(sc.nextLine());
        }
        
		// Sorting the list, writing it to console
        Collections.sort(list);
        list.toString();        
        //for(int i = 0; i < list.size(); i++){System.out.println(list.get(i));}
    }     
}