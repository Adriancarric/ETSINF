
/**
 * Write a description of class triangulo here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Triangulo extends Figura {
    private double x, y;
    private double base, altura;
    
    Triangulo (double x, double y, double b, double a) 
    {
        super(x,y);
        this.base=b;
        this.altura=a;
    }
    
    public String toString()
    {
        return "Triangulo: \n \t" + "Posicion: (" + x + "," + y + ") \n \t Base: " 
            + base + "\n \t Altura: " + altura;
    }
    
    public boolean equals(Object obj)
    {
        if (!(obj instanceof Triangulo)) {return false;}
        
        Triangulo tmpTriangulo = (Triangulo) obj;
        return tmpTriangulo.x == this.x && 
               tmpTriangulo.y == this.y && 
               tmpTriangulo.base == this.base && 
               tmpTriangulo.altura == this.altura;
    }
    
    public double area()
    {
        return base*altura / 2;
    }
}
