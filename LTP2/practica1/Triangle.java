
/**
 * class Triangle.
 * 
 * @author LTP
 * @version 2017-18
 */

public class Triangle extends Figure {
    private double base; 
    private double height;

    public Triangle(double x, double y, double b, double h) {
        super(x, y);
        base = b;
        height = h;
    }

    public String toString() {
        return "Triangle:\n\t" +
            super.toString() +
            "\n\tBase: " + base +
            "\n\tHeight: " + height;
    }
    public boolean equals(Object obj)
    {
        if(!(obj instanceof Triangle)) {return false;}
        
        Triangle tmpTriangle = (Triangle) obj;
        return 
            tmpTriangle.base == this.base &&
            tmpTriangle.height == this.height && super.equals(obj);
    }
    public double area(){
        return base * height / 2;
    }
}