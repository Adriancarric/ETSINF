
/**
 * Write a description of class Rectangulo here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Rectangulo extends Figura
{
    private double x, y;
    private double base, altura;
    
    Rectangulo (double x, double y, double b, double a)
    {
        super(x,y);
        this.base = base;
        this.altura = altura;
    }
    
    public String toString()
    {
        return "Rectangulo: \n \t" + "Posicion: (" + x + "," + y + ") \n \t Base: " 
            + base + "\n \t Altura: " + altura;
    }
    
    public boolean equals(Object obj)
    {
        if(!(obj instanceof Rectangulo)) {return false;}
        
        Rectangulo tmpRectangulo = (Rectangulo) obj;
        return tmpRectangulo.x == this.x &&
               tmpRectangulo.y == this.y &&
               tmpRectangulo.base == this.base &&
               tmpRectangulo.altura == this.altura;
    }
    
    public double area() 
    {
        return base*altura;
    }
}
