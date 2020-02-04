/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package proyecto;

import java.io.IOException;
import java.util.concurrent.TimeoutException;

import com.rabbitmq.client.AMQP;
import com.rabbitmq.client.BuiltinExchangeType;
import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;
import com.rabbitmq.client.Consumer;
import com.rabbitmq.client.DefaultConsumer;
import com.rabbitmq.client.Envelope;

/**
 *
 * @author Administrador
 */

public class Consumidor {
    
    private final String NOMBRE_EXANGE;
    private final String NOMBRE_TOPIC;
    private Channel channel;
    private Connection connection;
    
    protected String aux;
    
    /*Esto es nuevo*/
    //protected XMLObject messageXML;
    
    
    public Consumidor(String cola, String topic){
        NOMBRE_EXANGE = cola;
        NOMBRE_TOPIC = topic;
    }
    
    public void connect(){
        try {
            //Cramos conexión para escuchar
            ConnectionFactory factory = new ConnectionFactory();
            factory.setHost("localhost");
                
            //Conectamos a raw para pillar los datos
            connection = factory.newConnection();
            channel = connection.createChannel();
            channel.exchangeDeclare(NOMBRE_EXANGE, BuiltinExchangeType.TOPIC);

            //Guardamos la cola
            String COLA_CONSUMER = channel.queueDeclare().getQueue();

            //Bindemos a la cola
            channel.queueBind(COLA_CONSUMER, NOMBRE_EXANGE, NOMBRE_TOPIC);
            //Creamos el consumidor
            Consumer consumer = new DefaultConsumer(channel) {
                
                @Override
                public void handleDelivery(String consumerTag, Envelope envelope, AMQP.BasicProperties properties, byte[] body) throws IOException {
                        
                        aux = new String(body, "UTF-8");
                        System.out.println("El mensaje es:" + aux);
                        
                        
                }
            };
                        
            channel.basicConsume(COLA_CONSUMER, true, consumer);

        } catch (IOException ex) {
            System.err.println("Error Consumidor.java" + ex);
        } catch (TimeoutException ex) {
            System.err.println("Error Consumidor.java" + ex);
        }
    }

    public void close() throws Exception {
        
        channel.close();
        connection.close();
    }
}
