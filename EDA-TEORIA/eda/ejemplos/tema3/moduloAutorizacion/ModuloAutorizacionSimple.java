package ejemplos.tema3.moduloAutorizacion;
import librerias.estructurasDeDatos.deDispersion.TablaHash;
/** Como parte de una aplicación de control de acceso a un 
 *  sistema de reservas, se desea desarrollar un módulo de 
 *  autorización que permita:
 *  - Conceder autorización a un usuario dado su nombre y su contraseña
 *  - Conocer si un usuario está autorizado en el sistema a partir de 
 *    su nombre y su contraseña. Se considera que un usuario está 
 *    autorizado si su nombre se encuentra registrado y la contraseña 
 *    proporcionada coincide con aquella que suministró cuando se concedió 
 *    la autorización.
 *    Diseña completamente el sistema de acuerdo a las siguientes indicaciones:
 *    (a) Clase ModuloAutorizacionSimple: tiene una Tabla Hash con información
 *    de los usuarios y los métodos registrarUsuario y estaAutorizado
 *    (b) Programa TestModuloAutorizacionSimple: concede la autorización a un 
 *    usuario y comprueba si realmente está autorizado
 */
public class ModuloAutorizacionSimple {
   
    private TablaHash<String, String> th;
    // la clave son los nombres de usuario y los valores los passwd
    
    public ModuloAutorizacionSimple() {
        th = new TablaHash<String, String>(10); 
    }
    
    public boolean estaAutorizado(String nom, String passwd) {
        boolean res = false;
        String pass = th.recuperar(nom);
        if (pass != null && pass.equals(passwd)) {
            res = true;
        }
        return res;
    }
    
    public void registrarUsuario(String nom, String passwd) 
        throws UsuarioExistente {
        Usuario aRegistrar = new Usuario(nom, passwd);
        String pass = th.recuperar(nom);
        if (pass != null) {
            throw new UsuarioExistente(nom + " ya esta registrado");
        }
        th.insertar(nom, passwd);      
    }
}