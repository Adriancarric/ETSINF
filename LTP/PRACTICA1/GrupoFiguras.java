
/**
 * Write a description of class GrupoFiguras here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class GrupoFiguras 
{
    static final int MAX_NUM_FIGURAS = 10;
    private Object [] listaFiguras = new Object [MAX_NUM_FIGURAS];
    private int numF = 0;
    public void anyadeCirculo(Circulo c) 
    {
       if(c.equals(this.listaFiguras))
       {
           listaFiguras[numF++] = c;
       }
    }
    
    public void anyadeTriangulo(Triangulo t) 
    {
        if(t.equals(this.listaFiguras))
        {
            listaFiguras[numF++] = t;
        }
    }
    
    public void andyadeObjeto(Object o)
    {
        if(o.equals(this.listaFiguras))
        {
            listaFiguras[numF++] = o;
        }
    }
          
    public void anyadeFigura(Figura f)
    {
        if(f.equals(this.listaFiguras))
        {
            listaFiguras[numF++] = f;
        }
    }
    
    public String toString() 
    {
        String s = "Circulos:";
        for(int i = 0; i < numF; i++)
        {
            if(listaFiguras[i] instanceof Circulo)
            {
                s+= "\n" + listaFiguras[i];
            }
        }
        s+="\nTriangulos";
        for(int i = 0; i < numF; i++) 
        {
            if(listaFiguras[i] instanceof Triangulo)
            {
                s+="\n" + listaFiguras[i];
            }
        }
        return s;
    }
    
    public boolean equals(Object obj)
    {
        if (!(obj instanceof GrupoFiguras)) {return false;}
        
        GrupoFiguras g = (GrupoFiguras) obj;
        boolean iguales = false;
        for(int i = 0; i <= this.numF; i++)
        {
            for(int j = 0; j <= g.numF; j++)
            {
                    iguales= this.listaFiguras[i].equals(g.listaFiguras[j]);
            }
        }
        
        for(int j = 0; j <= g.numF; j++)
        {
            for(int i = 0; i <= this.numF; i++)
            {
                    iguales= g.listaFiguras[j].equals(this.listaFiguras[i]);
            }
        }
        return iguales;
    }
    
}
