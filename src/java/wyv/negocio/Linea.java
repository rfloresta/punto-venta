
package wyv.negocio;


public class Linea {
    private ProductoObj proObj;
    private int can;

    public ProductoObj getProObj() {
        return proObj;
    }

    public void setProObj(ProductoObj proObj) {
        this.proObj = proObj;
    }

    public int getCan() {
        return can;
    }

    public void setCan(int can) {
        this.can = can;
    }
    
    public double getImporte()
    {
        float decimal=proObj.getDescuento()/100;
        double descuento=proObj.getPrecioven()*decimal;
        
        return (proObj.getPrecioven()*can)-(descuento);
    }
    
    
}
