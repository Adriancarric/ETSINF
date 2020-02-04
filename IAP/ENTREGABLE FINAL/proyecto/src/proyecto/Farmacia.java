package proyecto;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class Farmacia {

	/*Farmacia envía un CSV con los stocks de los medicamentos*/
	public Farmacia() {}
	
	public void conexion() {
		System.out.println("--Hola, soy la FARMACIA de tu barrio");
		/*Crear el publicador y la cola "stock"*/
		
		Publisher pub1 = new Publisher("stock");
		Publisher pub2 = new Publisher("antidepresivos");
		try {
			pub1.connect();
			pub2.connect();
		} catch (Exception e) {
			System.out.println("Excepcion en el publicador de Farmacia");
			e.printStackTrace();
		}
		
		/*Leer el stock, en formato csv*/
		try {
			String stock = new String(Files.readAllBytes(Paths.get("C:\\FARMACIA\\stockFarmacia.csv")));
			String antidepre = new String(Files.readAllBytes(Paths.get("C:\\FARMACIA\\antidepresivos.csv")));
			System.out.println("Farmacia: \n" + stock + "·\n");
			System.out.println("Farmacia: \n" + antidepre + "·\n");
			pub1.send("stock.csv", stock);
			pub2.send("lista.csv", antidepre);
		} catch (IOException e) {
			System.out.println("Excepcion en el stock de Farmacia");
			e.printStackTrace();
		}
		catch (Exception e) {
			System.out.println("Excepcion al enviar el stock");
			e.printStackTrace();
		}
		
	} 
	
	
	
	
	
}
