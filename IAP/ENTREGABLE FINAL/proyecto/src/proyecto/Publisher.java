package proyecto;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import com.rabbitmq.client.BuiltinExchangeType;
import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;

public class Publisher {
	
	private String NOMBRE_EXCHANGE;
	private Channel channel;
	private Connection connection;
	
	public Publisher(String exchange) {
		NOMBRE_EXCHANGE=exchange;
	}

	public void connect() throws Exception{
		
		ConnectionFactory factory = new ConnectionFactory(); 
		factory.setHost("localhost");
		
		connection = factory.newConnection(); 
		
		channel = connection.createChannel();
		 
		channel.exchangeDeclare(NOMBRE_EXCHANGE, BuiltinExchangeType.TOPIC);
	
	}
	
	public void send(String tema, Object obj)throws Exception{
		System.out.println("Se ha publicado el tema: " + tema + " y"
				+ " contenido: " + obj);
		
		channel.basicPublish(NOMBRE_EXCHANGE, tema.trim(), null, obj.toString().getBytes());
	
	}
	
	public void close() throws Exception{
		
		channel.close();
		connection.close();

	}

}
