
/**
 * Write a description of class Figura here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public abstract class Figura 
{ 
    protected double x, y;
    public Figura(double x, double y)
    {
        this.x = x;
        this.y = y;
    }
    
    public String toString()
    {
        return "Posición: ("+x+", "+y+")";
    }
}
