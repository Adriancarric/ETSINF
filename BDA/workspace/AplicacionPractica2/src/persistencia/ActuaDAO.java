package persistencia;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import comunicacion.ActuaDTO;
import excepciones.DAOExcepcion;



public class ActuaDAO {
	
	private ConnectionManager connManager;


	public ActuaDAO(ConnectionManager connManager) throws ClassNotFoundException {
			this.connManager= connManager;
	}
		
		
	public void crearActuacion(ActuaDTO actua) throws DAOExcepcion {
		try{
			String query = "INSERT INTO PELICULA VALUES (" + actua.toStringCod_act() 
					+ "," + actua.toStringCod_peli() + "," + actua.toStringPapel() +")";
			
			if (query.compareTo("")==0 || query.isEmpty()) return;		
			
			connManager.updateDB(query);
		}
		catch (Exception e){		throw new DAOExcepcion(e);}
	}


	public List<ActuaDTO> buscarActuaPorCodPeli(String cod) throws DAOExcepcion{
		try{
			List<ActuaDTO> listaActuaciones=new ArrayList<ActuaDTO>();
			String query = "select * from actua where cod_peli = '"+cod+"'";
			
			if (query.compareTo("")==0 || query.isEmpty()) return listaActuaciones;		

			ResultSet rs=connManager.queryDB(query);						

			
			try{				
				while (rs.next()){
					ActuaDTO peli = new ActuaDTO(rs.getString("COD_ACT"),cod,rs.getString("PAPEL")); 
					listaActuaciones.add(peli);
				}
				return listaActuaciones;
			}
			catch (Exception e){	throw new DAOExcepcion(e);}
		}
		catch (DAOExcepcion e){		throw e;}	
	}


	public List<ActuaDTO> buscarActuaPorCodAct(String cod) throws DAOExcepcion{
		try{
			List<ActuaDTO> listaActuaciones=new ArrayList<ActuaDTO>();
			
			String query = "select * from actua where cod_act = '"+cod+"'";
			
			if (query.compareTo("")==0 || query.isEmpty()) return listaActuaciones;
			
			ResultSet rs=connManager.queryDB(query);						
						
			try{				
				while (rs.next()){
					ActuaDTO peli = new ActuaDTO(cod,rs.getString("COD_PELI"),rs.getString("PAPEL")); 
					listaActuaciones.add(peli);
				}
				return listaActuaciones;
			}
			catch (Exception e){	throw new DAOExcepcion(e);}
		}
		catch (DAOExcepcion e){		throw e;}	
	}


	public ActuaDTO buscarActuacionPorPeliActor(String cod_peli, String cod_act) throws DAOExcepcion {
		try{
			String query = "select * from actua where cod_act = '"+cod_act+"' and cod_peli = '"+cod_peli+"'";
			
			if (query.compareTo("")==0 || query.isEmpty()) return null;
			
			ResultSet rs=connManager.queryDB(query);
				
			if (rs.next())
				return new ActuaDTO(cod_act, cod_peli, rs.getString("PAPEL"));
	
			return null;
		}
		catch (Exception e){		throw new DAOExcepcion(e);}
	}
	

}
