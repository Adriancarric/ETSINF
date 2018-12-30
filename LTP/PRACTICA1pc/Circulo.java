
/**
 * Write a description of class circulo here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Circulo extends Figura 
{
    protected double x, y;
    protected double r;
    
    Circulo (double x, double y, double r) 
    {
        super(x,y);
        this.r=r;
    }
    
    public String toString()
    {
        return "Circulo: \n \t" + "Posicion: (" + x + "," + y + ") \n \t Radio: " + r; 
    }
    
    public boolean equals(Object obj)
    {
        if(!(obj instanceof Circulo)){ return false;}
        Circulo tmpCirculo = (Circulo) obj;
        return tmpCirculo.x == this.x && 
               tmpCirculo.y == this.y && 
               tmpCirculo.r == this.r;
    }
    
    public double area()
    {
        return Math.pow(r,2)*Math.PI;
    }
}
