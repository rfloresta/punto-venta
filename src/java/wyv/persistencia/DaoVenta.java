
package wyv.persistencia;

import java.util.List;
import wyv.negocio.VentaObj;

public interface DaoVenta {
    
    public String registrar(VentaObj venObj);
    public String generaNumero();
    public List litarVenta();
    public List listarDetalle();
}
