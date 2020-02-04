package transformadores;

import java.util.ArrayList;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;

public class XML2JSON extends AbstractMessageTransformer {

	public XML2JSON() {
		// TODO Auto-generated constructor stub
		System.out.println("XML2JSON Creado");
	}
	
	@Override
	public Object transformMessage(MuleMessage message, String outputEncoding)
			throws TransformerException {
		
		//La cadena que li ve
		String xml=(String)message.getPayload();
		
		//EL nostre JSON final
		JSONArray jsonList=new JSONArray();
		
		try{
		    Document document = DocumentHelper.parseText(xml);
		    //Llista dels punts
		    List<Node> listaMedicamentos = document.selectNodes("//Receta");

		    for(Node n:listaMedicamentos){
		    	
		    	//El JSON on ficarem les receptes
		    	JSONObject obj=new JSONObject();

		    	//Seleccionem el id dins del xml i el fiquem dins del JSONObject que hem creat
		    	Node nombreID=n.selectSingleNode("ID");
		    	obj.put("ID", nombreID.getStringValue()); 
		    	
		    	//Igual pero amb la descripció
		    	Node nombrePac=n.selectSingleNode("nombrePaciente");
		    	obj.put("nombrePaciente", nombrePac.getStringValue());
		    	
		    	//ibid
		    	Node nuss=n.selectSingleNode("NUSS");
		    	obj.put("NUSS", nuss.getStringValue());
		    	
		    	//ibid
		    	Node medi=n.selectSingleNode("Medicamento");
		    	obj.put("medicamento", medi.getStringValue());
		    	
		    	//Afegim al document el JSON obtingut
		    	jsonList.put(obj);
		    	
		    }
		    
		    
		}catch(Exception e){ 
			e.printStackTrace(); 
		}
		System.out.println("XML2JSON:" + jsonList.toString());
		return jsonList.toString();

	}

}
