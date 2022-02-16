package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Document</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <style>  \n");
      out.write("        .bg-text {\n");
      out.write("          background-color: rgb(0,0,0); /* Fallback color */\n");
      out.write("          background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */\n");
      out.write("          color: white;\n");
      out.write("          font-weight: bold;\n");
      out.write("          border: 3px solid #f1f1f1;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("   \n");
      out.write("<body>\n");
      out.write("  \n");
      out.write("  <div class=\"grand-div\">\n");
      out.write("    <div class=\"gauche bg-text\">\n");
      out.write("        <form method=\"get\" action=\"Search\">\n");
      out.write("        <p>Chercher dans la bibliotheque</p>\n");
      out.write("        <div class=\"input-group \">\n");
      out.write("          <input type=\"text\" class=\"form-control\" aria-label=\"Text input with dropdown button\" name=\"recherche\">\n");
      out.write("          <button class=\"btn btn-warning dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"true\" >Rechercher par</button>\n");
      out.write("          <ul class=\"dropdown-menu dropdown-menu\">\n");
      out.write("            <li><input type=\"radio\" name=\"type\" value=\"auteur\">auteur</li>\n");
      out.write("            <li><hr class=\"dropdown-divider\"></li>\n");
      out.write("            <li><input type=\"radio\" name=\"type\" value=\"titre\" checked=\"checked\" >titre</li>\n");
      out.write("            <li><hr class=\"dropdown-divider\"></li>\n");
      out.write("            <li><input type=\"radio\" name=\"type\" value=\"domaine\">domaine</li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"droit bg-text\">\n");
      out.write("      <form action=\"auth\" method=\"POST\">\n");
      out.write("        <p>Se Connecter</p>\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <div class=\"input-group-prepend\">\n");
      out.write("            <span class=\"input-group-text bg-warning\" id=\"basic-addon1\">Username</span>\n");
      out.write("          </div>\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Type...\" aria-label=\"Username\" aria-describedby=\"basic-addon1\" name=\"user\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <div class=\"input-group-prepend\">\n");
      out.write("            <span class=\"input-group-text bg-warning\" id=\"basic-addon1\">Password</span>\n");
      out.write("          </div>\n");
      out.write("          <input type=\"password\" class=\"form-control\" placeholder=\"Type...\" aria-label=\"Username\" aria-describedby=\"basic-addon1\" name=\"pass\">\n");
      out.write("        </div>\n");
      out.write("        <button type=\"submit\" class=\"btn btn-light mb-1 \" id=\"button\" style=\"align-items: center;\">Login</button>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write(" </body>\n");
      out.write(" <script>\n");
      out.write("        \n");
      out.write(" </script>\n");
      out.write("      <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
