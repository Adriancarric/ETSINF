
/**
 * Write a description of class Cilindro here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Cilindro extends Circulo implements Volumen
{
    protected double a;
    Cilindro(double x, double y, double radio, double altura)
    {
        super(x,y,radio);
        a = altura;
    }
    
    Cilindro(Circulo c, double altura)
    {
        this(c.x, c.y, c.r, altura);
    }
    
    public double volumen()
    {
        return super.area()*a;
    }
    
    public double area()
    {
        return 2*super.area() + a * (Math.PI*2*super.r);
    }
    
    public double superficie()
    {
        return 2*super.area() + a * (Math.PI*2*super.r);
    }
}
