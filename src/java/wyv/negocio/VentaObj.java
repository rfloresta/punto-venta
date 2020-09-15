package wyv.negocio;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import wyv.persistencia.DaoVentaImp;

public class VentaObj {
    private List cesta=new ArrayList(); 
    private String num;
    private String fec;
    private UsuarioObj usu;
    private ClienteObj cli;
    private double pago;


    public void agregar(ProductoObj pro, int can){
        Linea lin=new Linea();
        lin.setProObj(pro);
        lin.setCan(can);
        cesta.add(lin);
    }
    public void quitar(String cod){
        for(int i=0;i<cesta.size();i++){
            Linea lin=(Linea)cesta.get(i);
            if(lin.getProObj().getCodPro().equals(cod)){
                cesta.remove(i);
            }
        }
    }
    public List getCesta() {
        return cesta;
    }
    
    public double getTot(){
        double tot=0.0;
        for(int i=0;i<cesta.size();i++){
            Linea lin=(Linea)cesta.get(i);
            tot+=lin.getImporte();
        }
        return tot;
    }
    
    public double getSubTot(){
        double tot=0.0;
        for(int i=0;i<cesta.size();i++){
            Linea lin=(Linea)cesta.get(i);
            tot+=lin.getImporte();
        }
        double igv=tot*0.18;
        return tot-igv;
    }
    
    public double getValorIgv(){
        double tot=0.0;
        for(int i=0;i<cesta.size();i++){
            Linea lin=(Linea)cesta.get(i);
            tot+=lin.getImporte();
        }
        double igv=0.0;
        return  igv=tot*0.18;
    }
    
    public double getDescTotales(){
         double tot=0.0;
        for(int i=0;i<cesta.size();i++){
            Linea lin=(Linea)cesta.get(i);
            float decimal=lin.getProObj().getDescuento()/100;
            double descuento=lin.getProObj().getPrecioven()*decimal;
            tot+=descuento;
        }
        return tot;
    }

    public String getNum() {
        DaoVentaImp daoVen=new DaoVentaImp();
        return daoVen.generaNumero();
    }

    public void setNum(String num) {
        this.num = num;
    }

      public String getFec()
    {
        
        Date h=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy"); 
        return sdf.format(h);
    }


    public void setFec(String fec) {
        this.fec = fec;
    }

    public UsuarioObj getUsu() {
        return usu;
    }

    public void setUsu(UsuarioObj usu) {
        this.usu = usu;
    }

    public ClienteObj getCli() {
        return cli;
    }

    public void setCli(ClienteObj cli) {
        this.cli = cli;
    }

    public double getPago() {
        return pago;
    }

    public void setPago(double pago) {
        this.pago = pago;
    }

}
