package proyecto;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;

public class AmbulatorioXML {
	    
	    public void conexion() throws Exception{
	        System.out.println("--Hola, soy ambulatorioXML");        
	        //Creamos el publicador y la cola raw
	        Publisher pub=new Publisher("ambulatorioXML");
	        pub.connect();
	        
	        //XML para pasarlo a la cola
	        //File file = new File("C:\\Ambulatorios\\ambulatorioxml.xml");
	        String contenido = new String(Files.readAllBytes(Paths.get("C:\\Ambulatorios\\ambulatorioxml.xml")));
	        System.out.println("AmbulatorioXML: \n" + contenido + "·\n");
	        //Enviamos a la cola
	        pub.send("pacientes.xml", contenido);
	        pub.close();
	        
	    }
	    
}
