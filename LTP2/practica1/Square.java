
/**
 * Write a description of class Square here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Square extends Rectangle {
    
    public Square(double x, double y, double lado) {
        super(x, y, lado, lado);
    }

    public String toString() {
        return "Square:\n\t" +
            super.toString() +
            "\n\tLado: " + super.base;
    }
    public boolean equals(Object obj)
    {
        return obj instanceof Square && super.equals(obj);
    }
    public double area(){
        return super.base * super.base;
    }
}
