/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 *
 * @author Administrador
 */
public class AmbulatorioCSV {
    
    public AmbulatorioCSV(){
        
    }
    
    public void conexion() throws Exception{
        System.out.println("--Hola, soy ambulatorioCSV");
        //Creamos el publicador y la cola raw
        Publisher pub=new Publisher("ambulatorioCSV");
        pub.connect();
        
        //CSV para pasarlo a la cola
        String contenido = new String(Files.readAllBytes(Paths.get("C:\\Ambulatorios\\ambulatoriocsv.csv")));
        System.out.println("AmbulatorioCSV: \n" + contenido + "·\n");
        //Enviamos a la cola
        pub.send("pacientes.csv", contenido);
        pub.close();
        
    }
    
}
