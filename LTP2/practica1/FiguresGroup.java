import java.util.*;
/**
 * class FiguresGroup.
 * 
 * @author LTP 
 * @version 2017-18
 */

public class FiguresGroup {
    private static final int NUM_FIGURES = 10;
    private Figure[] figuresList = new Figure[NUM_FIGURES];
    private int numF = 0;
    
    public void add(Figure f) { figuresList[numF++] = f; }
    
    public String toString() {
        String s = "";
        for (int i = 0; i < numF; i++) {
            s += "\n" + figuresList[i];
        }
        return s;
    }

    private boolean found(Figure f) {
        for (int i = 0; i < numF; i++) {
            if (figuresList[i].equals(f)) return true;
        }
        return false;
    }

    private boolean included(FiguresGroup g) {
        for (int i = 0; i < g.numF; i++) {
            if (!found(g.figuresList[i])) return false;
        }
        return true;
    }
    
    public boolean equals (Object obj)
    {
        return obj instanceof FiguresGroup &&
                this.included((FiguresGroup)obj) && 
                ((FiguresGroup)obj).included(this);
    }
    
    public double area()
    {
        double area = 0;
        for(int i = 0; i < numF; i++){
            area += figuresList[i].area();
        }
        return area;
    }
    
    public Figure greatestFigure()
    {
        Figure g = figuresList[0];
        for(int i = 0; i<numF; i++){
            if(figuresList[i].area() > figuresList[i+1].area()){
                return g = figuresList[i];
            } else {return g=figuresList[i+1];
            }
        }
        return g;
    }
    
    public List orderedList()
    {
        List l = new LinkedList();
        if(numF>0) {l.add(figuresList[0]);}
        for(int i = 1; i < numF; i++){
            int j = l.size() - 1;
            while (j >= 0 && figuresList[i].compareTo(l.get(j)) < 0){j--;}
            l.add(j+1, figuresList[i]);
        }
        return l;
    }
    
    public void print(char c)
    {
        Printable p;
        for(int i =0; i < numF; i++){
            if(figuresList[i] instanceof Printable){
                p = (Printable)figuresList[i];
                p.print(c);
            }
        }
    }
}