
/**
 *TAD de una cola implementado con un array circular de amplitud variable
 * 
 * @author (Professors LTPP) 
 */
import librerias.modelos.Cola;

public class ColaAC <T> implements Cola<T> { 
    //Definicion de los atributos necesarios:
    //elArray, una array de tipo generico \verb"T" para guardar los elementos de la cola

    // dos atributos primero y ultimo de tipo entero que mantienen una referencia a los indices donde estan situados el primer y último elemento de la cola. 
  
    // un atributo talla para representar la cantidad de elementos de la cola. 

    /**Constructor de Cola */
    //El compilador nos avisa (warning) de que el tipo puro correspondiente a T en (1) se aplicara
    //en tiempo de ejecucion. Con esta directiva le decimos que no nos muestre el aviso ya que la coercion es segura.
    @SuppressWarnings({"unchecked"})
    public ColaAC () {
        elArray = (T[]) (new Object [MAX]); //(1)
        //COMPLETAR
    }//Fin del constructor ColaAC<T>

    /** Metodo privado para ampliar el array si hace falta**/
    @SuppressWarnings({"unchecked"})
    private void ampliarElArray(){

        T[]  arrayAux = (T[]) (new Object [elArray.length*2]);
        int i = 0,
        tallaAux=talla;
        while(!this.esVacia())
            try{arrayAux [i++] = this.desencolar();
            }catch(Exception e){
                System.out.println("Error al intentar ampliar una cola");
            }
        elArray = arrayAux;
        this.primero = 0;
        this.ultimo = tallaAux-1;
        this.talla = tallaAux;

    }//Fin del metodo void ampliarElArray()  

    // Implementacion de las operaciones del TAD definido en la interfaz Pila <T>:
    // Metodos modificadores del estado de una cola:

    /** Inserta el Elemento e en una cola situandolo al final **/

    public void encolar(T e){
        //COMPLETAR
    }//Fin del metodo void encolar(T)

    /** Consulta y extrae el primer elemento, solo si la cola no esta vacia.**/
    public T desencolar(){
        //COMPLETAR
    }//Fin del metodo T desencolar()

    // Metodos consultores del estado de la cola
    /** Devuelve la cantidad de elementos  de la cola **/
    public int talla(){
        //COMPLETAR
    }//Fin del metodo T talla

    /** Solo si la cola no esta vacia, consulta el primer elemento en cabeza,
     * (el primero en orden de insercion) **/
    public T primero() {
        //COMPLETAR
    }//Fin del metodo T primero()

    /** Comprueba si una cola esta vacia **/
    public boolean esVacia(){
        //COMPLETAR
    }//Fin del metodo boolean esVacia()

    /** Devuelve la siguiente posicion ocupada del array modulo MAX.
    Esta instruccion puede sustituirse por (i+1)%elArray.length**/
    private int incrementar (int i) {
        //COMPLETAR
        return i;
    }

    /** Devuelve el contenido de la cola con el formato 
    <-elem0<-elem1<-elem2<-...<-elemN<- donde N = talla()-1
    Cada elemi se devuelve con el formato que este definido para su tipo
     **/ 
    public String toString (){
        //COMPLETAR
    }//Fin del metodo String toString()
}
