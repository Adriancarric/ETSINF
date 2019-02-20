package ejemplos.tema3.moduloAutorizacion;

/** Ejercicio 14 (a): clase de la Clave de la Tabla Hash que tiene el 
 *  modulo de autorizacion de la aplicacion de control de acceso a un 
 *  sistema de reservas. TIENE UN nombre y UN password de usuario
 */

public class Usuario {

    private String nombre, password;
    
    public Usuario(String n, String pwd) {
        this.nombre = n; 
        this.password = pwd;
    }
    
    public Usuario(String n) { this(n, null); }
    
    public String getNombre() { return this.nombre; }
    
    public String getPassword() { return this.password; }
    
    public boolean equals(Object o) {
        return o instanceof Usuario
               && this.nombre.equals(((Usuario) o).nombre);
    }
    
    public int hashCode() { return this.nombre.hashCode(); }
    
    public String toString() { return this.nombre; }
}