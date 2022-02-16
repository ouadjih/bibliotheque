package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ajouterAuteur_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Document</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\">\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"back position-absolute start-0\" style=\"top:1.5em;\">\r\n");
      out.write("        <a href=\"Admin.jsp\"><button class=\"btn btn-warning bi bi-arrow-left-square\"> Retour</button></a>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"position-absolute start-50 translate-middle\" style=\"margin-top :2.5em;\">\r\n");
      out.write("        <p>\r\n");
      out.write("            <font color=\"green\">\r\n");
      out.write("                <c:if test=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sm != null}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                    <c:remove scope=\"session\" var=\"sm\"/>\r\n");
      out.write("                </c:if>\r\n");
      out.write("            </font>\r\n");
      out.write("        </p>\r\n");
      out.write("        <form method=\"get\" action=\"Search\">\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"input-group p-3\" >\r\n");
      out.write("              <input type=\"text\" class=\"form-control\" aria-label=\"Text input with dropdown button\" name=\"type\" placeholder=\"Chercher un livre\">\r\n");
      out.write("              <button class=\"btn btn-warning dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"true\" aria-required=\"true\" >Rechercher par</button>\r\n");
      out.write("              <ul class=\"dropdown-menu dropdown-menu\">\r\n");
      out.write("                <li><input type=\"radio\" name=\"recherche\" value=\"auteur\">auteur</li>\r\n");
      out.write("                <li><hr class=\"dropdown-divider\"></li>\r\n");
      out.write("                <li><input type=\"radio\" name=\"recherche\" value=\"titre\" checked=\"checked\">titre</li>\r\n");
      out.write("                <li><hr class=\"dropdown-divider\"></li>\r\n");
      out.write("                <li><input type=\"radio\" name=\"recherche\" value=\"domaine\">domaine</li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("          </form>\r\n");
      out.write("    </div>\r\n");
      out.write("        <div class=\"position-absolute  end-0 \"style=\"top:1.2em; \">\r\n");
      out.write("            <a href=\"logout\" ><img src=\"img/logout1.png\" class=\"logout\"alt=\"Se Deconnecter\"></a>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"center bg-text\">\r\n");
      out.write("        \r\n");
      out.write("     <div class=\"box\">\r\n");
      out.write("         <form action=\"addAuteur.jsp\" method=\"post\">\r\n");
      out.write("            <legend>Information d'auteur</legend>\r\n");
      out.write("            <br><br>\r\n");
      out.write("            <div class=\"form-group \">\r\n");
      out.write("              <label for=\"exampleFormControlInput1\">Nom</label>\r\n");
      out.write("              <input type=\"text\" class=\"form-control\" style=\"width: 25em;\" id=\"exampleFormControlInput1\" name=\"nom\" placeholder=\"nom d'auteur\">\r\n");
      out.write("              <br>\r\n");
      out.write("              <label for=\"exampleFormControlInput1\">Prenom</label>\r\n");
      out.write("              <input type=\"text\" class=\"form-control\" id=\"exampleFormControlInput1\" name=\"prenom\" placeholder=\"prenom d'auteur\">\r\n");
      out.write("              <br>\r\n");
      out.write("              <label for=\"exampleFormControlInput1\">Date de Naissance</label>\r\n");
      out.write("              <input type=\"date\" class=\"form-control\" id=\"exampleFormControlInput1\" name=\"dateNaissance\" placeholder=\"date de Naissance\">\r\n");
      out.write("              <br>\r\n");
      out.write("              <br>\r\n");
      out.write("              \r\n");
      out.write("            </div>\r\n");
      out.write("            <p><br><button type=\"submit\" class=\"btn btn-warning mb-2\" style=\"float: right;\">Ajouter auteur</button></p>\r\n");
      out.write("        </form>\r\n");
      out.write("     </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write(" </body>\r\n");
      out.write("      <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
}
