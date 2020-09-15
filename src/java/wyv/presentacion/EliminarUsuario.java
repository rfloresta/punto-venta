package wyv.presentacion;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import wyv.servicios.ServicioUsuario;

public class EliminarUsuario extends org.apache.struts.action.Action {
    String pagina;
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        EntradaUsuario usua=(EntradaUsuario)form;
        ServicioUsuario serUsu=(ServicioUsuario)request.getSession().getAttribute("serUsu");
        Salida sal=(Salida)request.getSession().getAttribute("sal");
        String msg=serUsu.EliminarU(usua.getDni());

        if(msg.equals("ok")){
            List usuarios=serUsu.listaUsu();
            sal.setUsuarios(usuarios);
            request.getSession().setAttribute("salLis", sal);
            pagina="ListarUsuario";
        }else{
           sal.setMsg(msg);
           request.getSession().setAttribute("mensaje", sal);
           pagina="Mensaje";
        }
        
        return mapping.findForward(pagina);
    }
}
