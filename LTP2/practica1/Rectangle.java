
/**
 * Write a description of class Rectangle here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Rectangle extends Figure {
    protected double base; 
    protected double height;

    public Rectangle(double x, double y, double b, double h) {
        super(x, y);
        base = b;
        height = h;
    }

    public String toString() {
        return "Rectangle:\n\t" +
            super.toString() +
            "\n\tBase: " + base +
            "\n\tHeight: " + height;
    }
    public boolean equals(Object obj)
    {
        if(!(obj instanceof Rectangle)) {return false;}
        
        Rectangle tmpRectangle = (Rectangle) obj;
        return 
            tmpRectangle.base == this.base &&
            tmpRectangle.height == this.height && super.equals(obj);
    }
    public double area(){
        return base * height;
    }
}
