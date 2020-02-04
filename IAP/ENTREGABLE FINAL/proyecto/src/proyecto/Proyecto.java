package proyecto;

import transformadores.XML2JSON;

public class Proyecto {
	
	public static void main(String [] args) throws Exception{
		
		System.out.println("**** Bienvenido... ****");
					
		/* Crear ambulatorios */
		System.out.println("\n************************************************************ \nSe estan inicializando los ambulatorios\n");
		AmbulatorioCSV csv = new AmbulatorioCSV();
		csv.conexion();
		AmbulatorioXML xml = new AmbulatorioXML();
		xml.conexion();
		System.out.println("Ambulatorios inicializados\n************************************************************");
		
		/*Crear la farmacia*/
		System.out.println("\n************************************************************ \nSe esta inicializando la farmacia\n");
		Farmacia farmacia = new Farmacia();
		farmacia.conexion();
		System.out.println("\nFarmacia inicializada\n************************************************************");
		
		/*Iniciar transformacion*/
		/*Los transformadores se encuentran en el proyecto Mule 'entregable'.
		 * Uno hecho en java (XML2JSON) y el otro con TransformMessage*/
		/* XML2JSON transformadorXML = new XML2JSON(); */
	}

}
