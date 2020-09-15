package wyv.servicios;

import java.util.List;
import wyv.negocio.ClienteObj;
import wyv.negocio.ProductoObj;
import wyv.negocio.UsuarioObj;
import wyv.negocio.VentaObj;
import wyv.persistencia.DaoVentaImp;


public class ServicioVentaImp implements ServicioVenta {

    DaoVentaImp daoVen;
    VentaObj ventObj;

    public void setDaoVen(DaoVentaImp daoVen) {
        this.daoVen = daoVen;
    }

    @Override
    public String registrarVenta(UsuarioObj u, ClienteObj clie,  VentaObj ven, double pago) {

        ven.setUsu(u);
        ven.setPago(pago);
        ven.setCli(clie);
        ven.setNum(daoVen.generaNumero());
        ven.getFec();

        return daoVen.registrar(ven);
    }

    @Override
    public VentaObj nuevaVenta() {
        return ventObj=new VentaObj();
    }

    @Override
    public void agregarProducto(String codPro, String nombre, int can, double precioven) {
        ProductoObj proObj=new ProductoObj();
        
        proObj.setCodPro(codPro);
        proObj.setNombre(nombre); 
        proObj.setPrecioven(precioven);
        ventObj.agregar(proObj,can);
    }

    @Override
    public List listarVenta() {
        return daoVen.litarVenta();
    }

    @Override
    public List listarDetalle() {
        return daoVen.listarDetalle();
    }

}
