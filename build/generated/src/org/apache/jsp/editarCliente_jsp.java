package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import wyv.presentacion.Salida;

public final class editarCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/cabecera.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_html_hidden_value_property_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_html_text_value_styleClass_property_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_html_form_method_action;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_html_submit_value_styleClass_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_html_hidden_value_property_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_html_text_value_styleClass_property_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_html_form_method_action = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_html_submit_value_styleClass_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_html_hidden_value_property_nobody.release();
    _jspx_tagPool_html_text_value_styleClass_property_nobody.release();
    _jspx_tagPool_html_form_method_action.release();
    _jspx_tagPool_html_submit_value_styleClass_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html >\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <title>Tienda</title>     \n");
      out.write("    <link href=\"resources/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"resources/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"resources/css/pro.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/estilos.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/responsive/2.2.1/css/responsive.dataTables.min.css\">\n");
      out.write("    <script src=\"resources/js/jquery-1.9.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"resources/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"resources/js/func.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js\"></script>\n");
      out.write("<script src=\"https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js\"></script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("  <nav class=\" navbar navbar-static-top \">\n");
      out.write("      <div class=\"logo\">\n");
      out.write("          <img src=\"imagenes/nego.png\" alt=\"\" class=\"imglogo\" />\n");
      out.write("      </div>\n");
      out.write("         ");
 Salida sal=(Salida)session.getAttribute("sal"); 
      out.write("\n");
      out.write("         \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-sidebar-navbar-collapse-1\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-sidebar-navbar-collapse-1\">\n");
      out.write("                <ul class=\"nav navbar-nav \">\n");
      out.write("                    <li><a href=\"Principal.jsp\">Home<span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-home\"></span></a></li>\n");
      out.write("                    <li class=\"dropdown\"><!-- Clientes -->\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Clientes<span class=\"caret\"></span><span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-user\"></span></a>\n");
      out.write("                        <ul class=\"dropdown-menu forAnimate\" role=\"menu\">                        \n");
      out.write("                            <li><a href=\"registrarCliente.jsp\"> - Registrar<span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-plus\"></span></a></li>\n");
      out.write("                            <li class=\"divider\"></li>                            \n");
      out.write("                            <li><a href=\"ListarClie\"> - Listar<span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-list\"></span></a></li>\n");
      out.write("                            <li class=\"divider\"></li>                            \n");
      out.write("                            <li><a href=\"#\"> - Abonar<span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-usd\"></span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                    <li class=\"dropdown\"><!-- Ventas -->\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Ventas<span class=\"caret\"></span><span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-shopping-cart\"></span></a>\n");
      out.write("                        <ul class=\"dropdown-menu forAnimate\" role=\"menu\">\n");
      out.write("                            <li><a href=\"RedireccionVentas\"> - Registrar Venta <span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-plus\"></span></a></li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li><a href=\"#\"> - Consultas<span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-tasks\"></span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"dropdown\"> <!-- Inventario -->\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Almacen<span class=\"caret\"></span><span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-credit-card\"></span></a>\n");
      out.write("                        <ul class=\"dropdown-menu forAnimate\" role=\"menu\">\n");
      out.write("                            <li><a href=\"ListarProducto\">Producto<span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-plus\"></span></a></li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li><a href=\"ListarCategoria\">Categoria <span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-log-in\"></span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    ");
 if(sal.getTipo().equals("1")){ 
      out.write("\n");
      out.write("                    <li class=\"dropdown\"> <!-- Inventario -->\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Usuario<span class=\"caret\"></span><span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-user\"></span></a>\n");
      out.write("                        <ul class=\"dropdown-menu forAnimate\" role=\"menu\">\n");
      out.write("                            <li><a href=\"RegistrarUsuario.jsp\"> - Registrar Usuario<span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-plus\"></span></a></li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li><a href=\"Listarusuario\"> - Listar Usuario<span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-list\"></span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("                    <li class=\"dropdown\"> <!-- Conf -->\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">");
      out.print( sal.getMsg());
      out.write("<span class=\"caret\"></span><span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-cog\"></span></a>\n");
      out.write("                        <input type=\"hidden\" name=\"usuario\" value=\"");
      out.print( sal.getMsg());
      out.write("\"/>\n");
      out.write("                        <input type=\"hidden\" name=\"cod\" value=\"");
      out.print( sal.getDniusu());
      out.write("\"/>\n");
      out.write("                         <ul class=\"dropdown-menu forAnimate\" role=\"menu\">\n");
      out.write("                            <li><a href=\"Login.jsp\"> - Cerrar Sesion<span class=\"pull-right hidden-xs showopacity glyphicon glyphicon-log-in\"></span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>         \n");
      out.write("                               \n");
      out.write("                       ");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"main\">\n");
      out.write("    <br><br><br><br><br><br><br><br>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                                                      \n");
      out.write("                <div class=\"col-md-8\">  \n");
      out.write("\n");
      out.write("                    \n");
      out.write("                    <center><h3 class=\"text-muted\">Editar Clientes</h3> </center> <br>\n");
      out.write("                    ");
 Salida clie=(Salida)session.getAttribute("cliente"); 
      out.write("\n");
      out.write("                   \n");
      out.write("             \n");
      out.write("        <div class=\"table-responsive table-centered\">   \n");
      out.write("                        \n");
      out.write("                        <table class=\"table table-hover\">\n");
      out.write("                            ");
      //  html:form
      org.apache.struts.taglib.html.FormTag _jspx_th_html_form_0 = (org.apache.struts.taglib.html.FormTag) _jspx_tagPool_html_form_method_action.get(org.apache.struts.taglib.html.FormTag.class);
      _jspx_th_html_form_0.setPageContext(_jspx_page_context);
      _jspx_th_html_form_0.setParent(null);
      _jspx_th_html_form_0.setAction("/EditarCliente");
      _jspx_th_html_form_0.setMethod("POST");
      int _jspx_eval_html_form_0 = _jspx_th_html_form_0.doStartTag();
      if (_jspx_eval_html_form_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                           \n");
          out.write("                                <tr>\n");
          out.write("                                    <td>Nombre</td>\n");
          out.write("                                    <td>\n");
          out.write("                                        ");
          //  html:hidden
          org.apache.struts.taglib.html.HiddenTag _jspx_th_html_hidden_0 = (org.apache.struts.taglib.html.HiddenTag) _jspx_tagPool_html_hidden_value_property_nobody.get(org.apache.struts.taglib.html.HiddenTag.class);
          _jspx_th_html_hidden_0.setPageContext(_jspx_page_context);
          _jspx_th_html_hidden_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
          _jspx_th_html_hidden_0.setProperty("id");
          _jspx_th_html_hidden_0.setValue( String.valueOf(clie.getCliente().getIdcli()) );
          int _jspx_eval_html_hidden_0 = _jspx_th_html_hidden_0.doStartTag();
          if (_jspx_th_html_hidden_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_html_hidden_value_property_nobody.reuse(_jspx_th_html_hidden_0);
            return;
          }
          _jspx_tagPool_html_hidden_value_property_nobody.reuse(_jspx_th_html_hidden_0);
          out.write("\n");
          out.write("                                        ");
          //  html:text
          org.apache.struts.taglib.html.TextTag _jspx_th_html_text_0 = (org.apache.struts.taglib.html.TextTag) _jspx_tagPool_html_text_value_styleClass_property_nobody.get(org.apache.struts.taglib.html.TextTag.class);
          _jspx_th_html_text_0.setPageContext(_jspx_page_context);
          _jspx_th_html_text_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
          _jspx_th_html_text_0.setProperty("nom");
          _jspx_th_html_text_0.setStyleClass("form-control");
          _jspx_th_html_text_0.setValue( clie.getCliente().getNomCli());
          int _jspx_eval_html_text_0 = _jspx_th_html_text_0.doStartTag();
          if (_jspx_th_html_text_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_html_text_value_styleClass_property_nobody.reuse(_jspx_th_html_text_0);
            return;
          }
          _jspx_tagPool_html_text_value_styleClass_property_nobody.reuse(_jspx_th_html_text_0);
          out.write("\n");
          out.write("                                    </td>\n");
          out.write("                                \n");
          out.write("                                </tr> \n");
          out.write("                                <tr>\n");
          out.write("                                    <td>Dni </td>\n");
          out.write("                                    <td>\n");
          out.write("                                        ");
          //  html:text
          org.apache.struts.taglib.html.TextTag _jspx_th_html_text_1 = (org.apache.struts.taglib.html.TextTag) _jspx_tagPool_html_text_value_styleClass_property_nobody.get(org.apache.struts.taglib.html.TextTag.class);
          _jspx_th_html_text_1.setPageContext(_jspx_page_context);
          _jspx_th_html_text_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
          _jspx_th_html_text_1.setProperty("dni");
          _jspx_th_html_text_1.setStyleClass("form-control");
          _jspx_th_html_text_1.setValue( clie.getCliente().getDni());
          int _jspx_eval_html_text_1 = _jspx_th_html_text_1.doStartTag();
          if (_jspx_th_html_text_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_html_text_value_styleClass_property_nobody.reuse(_jspx_th_html_text_1);
            return;
          }
          _jspx_tagPool_html_text_value_styleClass_property_nobody.reuse(_jspx_th_html_text_1);
          out.write("\n");
          out.write("                                    </td>\n");
          out.write("                                </tr> \n");
          out.write("                                 <tr>\n");
          out.write("                                    <td>Telefono</td>\n");
          out.write("                                    <td>\n");
          out.write("                                        ");
          //  html:text
          org.apache.struts.taglib.html.TextTag _jspx_th_html_text_2 = (org.apache.struts.taglib.html.TextTag) _jspx_tagPool_html_text_value_styleClass_property_nobody.get(org.apache.struts.taglib.html.TextTag.class);
          _jspx_th_html_text_2.setPageContext(_jspx_page_context);
          _jspx_th_html_text_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
          _jspx_th_html_text_2.setProperty("telf");
          _jspx_th_html_text_2.setStyleClass("form-control");
          _jspx_th_html_text_2.setValue( clie.getCliente().getTeleCli() );
          int _jspx_eval_html_text_2 = _jspx_th_html_text_2.doStartTag();
          if (_jspx_th_html_text_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_html_text_value_styleClass_property_nobody.reuse(_jspx_th_html_text_2);
            return;
          }
          _jspx_tagPool_html_text_value_styleClass_property_nobody.reuse(_jspx_th_html_text_2);
          out.write("\n");
          out.write("                                    </td>\n");
          out.write("                                \n");
          out.write("                                </tr> \n");
          out.write("                                 <tr>\n");
          out.write("                                    <td>Direccion</td>\n");
          out.write("                                    <td>\n");
          out.write("                                        ");
          //  html:text
          org.apache.struts.taglib.html.TextTag _jspx_th_html_text_3 = (org.apache.struts.taglib.html.TextTag) _jspx_tagPool_html_text_value_styleClass_property_nobody.get(org.apache.struts.taglib.html.TextTag.class);
          _jspx_th_html_text_3.setPageContext(_jspx_page_context);
          _jspx_th_html_text_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
          _jspx_th_html_text_3.setProperty("direcc");
          _jspx_th_html_text_3.setStyleClass("form-control");
          _jspx_th_html_text_3.setValue( clie.getCliente().getDireCli());
          int _jspx_eval_html_text_3 = _jspx_th_html_text_3.doStartTag();
          if (_jspx_th_html_text_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_html_text_value_styleClass_property_nobody.reuse(_jspx_th_html_text_3);
            return;
          }
          _jspx_tagPool_html_text_value_styleClass_property_nobody.reuse(_jspx_th_html_text_3);
          out.write("\n");
          out.write("                                    </td>\n");
          out.write("                                \n");
          out.write("                                </tr> \n");
          out.write("                                <tr>\n");
          out.write("                                    <td>Email</td>\n");
          out.write("                                    <td>\n");
          out.write("                                        ");
          //  html:text
          org.apache.struts.taglib.html.TextTag _jspx_th_html_text_4 = (org.apache.struts.taglib.html.TextTag) _jspx_tagPool_html_text_value_styleClass_property_nobody.get(org.apache.struts.taglib.html.TextTag.class);
          _jspx_th_html_text_4.setPageContext(_jspx_page_context);
          _jspx_th_html_text_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
          _jspx_th_html_text_4.setProperty("email");
          _jspx_th_html_text_4.setStyleClass("form-control");
          _jspx_th_html_text_4.setValue( String.valueOf(clie.getCliente().getEmail()) );
          int _jspx_eval_html_text_4 = _jspx_th_html_text_4.doStartTag();
          if (_jspx_th_html_text_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_html_text_value_styleClass_property_nobody.reuse(_jspx_th_html_text_4);
            return;
          }
          _jspx_tagPool_html_text_value_styleClass_property_nobody.reuse(_jspx_th_html_text_4);
          out.write("\n");
          out.write("                                    </td>\n");
          out.write("                                \n");
          out.write("                                </tr> \n");
          out.write("                                \n");
          out.write("                                <tr>\n");
          out.write("                                    <td colspan=\"3\">");
          if (_jspx_meth_html_submit_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_html_form_0, _jspx_page_context))
            return;
          out.write("</td>\n");
          out.write("                                    \n");
          out.write("                                </tr>\n");
          out.write("                              \n");
          out.write("                          \n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_html_form_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_html_form_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_html_form_method_action.reuse(_jspx_th_html_form_0);
        return;
      }
      _jspx_tagPool_html_form_method_action.reuse(_jspx_th_html_form_0);
      out.write("\n");
      out.write("                                                                 \n");
      out.write("                            \n");
      out.write("                        </table>  \n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("</div>\n");
      out.write("            </div>\n");
      out.write("    </div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_html_submit_0(javax.servlet.jsp.tagext.JspTag _jspx_th_html_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  html:submit
    org.apache.struts.taglib.html.SubmitTag _jspx_th_html_submit_0 = (org.apache.struts.taglib.html.SubmitTag) _jspx_tagPool_html_submit_value_styleClass_nobody.get(org.apache.struts.taglib.html.SubmitTag.class);
    _jspx_th_html_submit_0.setPageContext(_jspx_page_context);
    _jspx_th_html_submit_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
    _jspx_th_html_submit_0.setValue("Modificar");
    _jspx_th_html_submit_0.setStyleClass("form-control btn-primary");
    int _jspx_eval_html_submit_0 = _jspx_th_html_submit_0.doStartTag();
    if (_jspx_th_html_submit_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_html_submit_value_styleClass_nobody.reuse(_jspx_th_html_submit_0);
      return true;
    }
    _jspx_tagPool_html_submit_value_styleClass_nobody.reuse(_jspx_th_html_submit_0);
    return false;
  }
}
