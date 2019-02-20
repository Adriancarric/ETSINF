package ejemplos.tema3.moduloAutorizacion;
import librerias.estructurasDeDatos.deDispersion.TablaHash;
/** Como parte de una aplicaci�n de control de acceso a un 
 *  sistema de reservas, se desea desarrollar un m�dulo de 
 *  autorizaci�n que permita:
 *  - Conceder autorizaci�n a un usuario dado su nombre y su contrase�a
 *  - Conocer si un usuario est� autorizado en el sistema a partir de 
 *    su nombre y su contrase�a. Se considera que un usuario est� 
 *    autorizado si su nombre se encuentra registrado y la contrase�a 
 *    proporcionada coincide con aquella que suministr� cuando se concedi� 
 *    la autorizaci�n.
 *    Dise�a completamente el sistema de acuerdo a las siguientes indicaciones:
 *    (a) Clase ModuloAutorizacionSimple: tiene una Tabla Hash con informaci�n
 *    de los usuarios y los m�todos registrarUsuario y estaAutorizado
 *    (b) Programa TestModuloAutorizacionSimple: concede la autorizaci�n a un 
 *    usuario y comprueba si realmente est� autorizado
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