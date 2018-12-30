
/**
 * class Figure.
 * 
 * @author LTP 
 * @version 2017-18
 */

public abstract class Figure {
    private double x;
    private double y;
    
    public Figure(double x, double y) {
        this.x = x; 
        this.y = y; 
    }
    
    public boolean equals(Object o) {
        if (!(o instanceof Figure)) { return false; }
        Figure f = (Figure) o;
        return x == f.x && y == f.y;
    }
    
    public String toString() {
        return "Position: (" + x + ", " + y + ")"; 
    }
    
    public abstract double area();
    
    public int compareTo(Object o){
        if (!(o instanceof Figure)) throw new ClassCastException();
        Figure f = (Figure) o;
        if (f.area() >= this.area()){ return (int)f.area(); }
        else{return (int)this.area();}
    }
}