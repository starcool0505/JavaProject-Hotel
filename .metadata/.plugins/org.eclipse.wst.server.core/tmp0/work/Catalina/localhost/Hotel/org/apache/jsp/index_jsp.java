/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.71
 * Generated at: 2023-12-23 17:36:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/views/header.jsp", Long.valueOf(1703352783502L));
    _jspx_dependants.put("/WEB-INF/views/footer.jsp", Long.valueOf(1703352782984L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"UTF-8\">\r\n");
      out.write("		<title>xx飯店</title>\r\n");
      out.write("		<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css\">\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"./css/main_color.css\">\r\n");
      out.write("		<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("		<script src=\"https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js\"></script>\r\n");
      out.write("		<link rel=\"icon\" type=image/png href=\"images/logopng.png\">\r\n");
      out.write("	<style type=\"text/css\">\r\n");
      out.write("	.logo-img\r\n");
      out.write("	{\r\n");
      out.write("		width: 50px;\r\n");
      out.write("		height: auto;\r\n");
      out.write("	}\r\n");
      out.write("	</style>\r\n");
      out.write("	\r\n");
      out.write("	</head>\r\n");
      out.write("\r\n");
      out.write("	<body>\r\n");
      out.write("		<nav class=\"navbar navbar-expand-lg bg_main4 fixed-top\">\r\n");
      out.write("			<div class=\"container-fluid\" style=\"margin: 0 20%\">\r\n");
      out.write("				<button class=\"navbar-brand text-light me-0\" onclick=\"window.location.href='./index.jsp'\" style=\"background: none; border: none; padding: 0; cursor: pointer;\">\r\n");
      out.write("					<img src=\"images/logo7.jpg\" alt=\"XX飯店圖片\" class=\"logo-img\">\r\n");
      out.write("				</button>\r\n");
      out.write("				<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("					<ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("						<li class=\"nav-item\">\r\n");
      out.write("							<a class=\"nav-link text-light ms-5\" href=\"./page1.jsp\">關於我們</a>\r\n");
      out.write("						</li>\r\n");
      out.write("						<li class=\"nav-item\">\r\n");
      out.write("							<a class=\"nav-link text-light\" href=\"./page2.jsp\">最新消息</a>\r\n");
      out.write("						</li>\r\n");
      out.write("						<li class=\"nav-item\">\r\n");
      out.write("							<a class=\"nav-link text-light\" href=\"./page3.jsp\">客房介紹</a>\r\n");
      out.write("						</li>\r\n");
      out.write("						<li class=\"nav-item\">\r\n");
      out.write("							<a class=\"nav-link text-light\" href=\"./page4.jsp\">交通資訊</a>\r\n");
      out.write("						</li>\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("\r\n");
      out.write("				<i class=\"bi bi-person-circle h5 text-light ml-3 mb-0\" role=\"button\" onclick=\"window.location.href='./login.jsp'\">登入</i>\r\n");
      out.write("			</div>\r\n");
      out.write("		</nav>\r\n");
      out.write("	</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"UTF-8\">\r\n");
      out.write("		<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css\">\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"./css/main_color.css\">\r\n");
      out.write("		<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("		<script src=\"https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js\"></script>\r\n");
      out.write("		<style>\r\n");
      out.write("	 		.RoomPreviewTitle\r\n");
      out.write("	 		{\r\n");
      out.write("				background-color: #afa07f; /* 背景顏色 */\r\n");
      out.write("				color:white;\r\n");
      out.write("				height:50px;\r\n");
      out.write("				display: flex;\r\n");
      out.write("				justify-content: center;\r\n");
      out.write("				align-items: center;\r\n");
      out.write("				padding: 20px; /* 可以添加內邊距來增加文字區域的大小 */\r\n");
      out.write("			}\r\n");
      out.write("			.NewsPreviewTitle\r\n");
      out.write("			{\r\n");
      out.write("				background-color: #afa07f; /* 背景顏色 */\r\n");
      out.write("				color:white;\r\n");
      out.write("				height:50px;\r\n");
      out.write("				display: flex;\r\n");
      out.write("				justify-content: center;\r\n");
      out.write("				align-items: center;\r\n");
      out.write("				padding: 20px; /* 可以添加內邊距來增加文字區域的大小 */\r\n");
      out.write("			}\r\n");
      out.write("		</style>\r\n");
      out.write("	</head>\r\n");
      out.write("	\r\n");
      out.write("	<body class=\"bg_main0 vh-100\">\r\n");
      out.write("		<section class=\"HomePicture\">\r\n");
      out.write("			<div style=\"margin: 0 20%\">\r\n");
      out.write("				<img src=\"images/pic1.jpg\" class=\"img-fluid\" alt=\"...\">\r\n");
      out.write("			</div>\r\n");
      out.write("		</section>\r\n");
      out.write("		\r\n");
      out.write("		<section class=\"NewsPreviewTitle\"  style=\"margin: 0 20%;\">\r\n");
      out.write("			<h3>消息預覽</h3>\r\n");
      out.write("		</section>\r\n");
      out.write("		\r\n");
      out.write("		<section class=\"NewsPreview\">\r\n");
      out.write("			<div style=\"margin: 0 20%\">\r\n");
      out.write("				<a href=\"page2.jsp\">\r\n");
      out.write("					<img src=\"images/pic12.png\" class=\"img-fluid\" alt=\"...\">\r\n");
      out.write("				</a>\r\n");
      out.write("			</div>\r\n");
      out.write("		</section>\r\n");
      out.write("		\r\n");
      out.write("		<section class=\"RoomPreviewTitle\"  style=\"margin: 0 20%;\">\r\n");
      out.write("			<h3>房型預覽</h3>\r\n");
      out.write("		</section>\r\n");
      out.write("		\r\n");
      out.write("		<section class=\"RoomPreview\">\r\n");
      out.write("			<div style=\"margin: 0 20%;\">\r\n");
      out.write("				<div id=\"carouselExampleSlidesOnly\" class=\"carousel slide\" data-bs-ride=\"carousel\">\r\n");
      out.write("					<div class=\"carousel-inner\">\r\n");
      out.write("						<div class=\"carousel-item active\">\r\n");
      out.write("							<img src=\"images/pic2.jpg\" class=\"d-block w-100\" alt=\"...\">\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"carousel-item\">\r\n");
      out.write("							<img src=\"images/pic3.jpg\" class=\"d-block w-100\" alt=\"...\">\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"carousel-item\">\r\n");
      out.write("							<img src=\"images/pic4.jpg\" class=\"d-block w-100\" alt=\"...\">\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"carousel-item\">\r\n");
      out.write("							<img src=\"images/pic6.jpg\" class=\"d-block w-100\" alt=\"...\">\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</section>\r\n");
      out.write("	</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("	/* 在這裡新增導覽列的背景色 */\r\n");
      out.write("	.fotter-bg-color\r\n");
      out.write("	{\r\n");
      out.write("		background-color: #B0A695;\r\n");
      out.write("		border: 1px solid transparent; /* 設定導覽列的邊框 */\r\n");
      out.write("		border-radius: 0; /* 可能需要將邊框的圓角設定為 0，視情況而定 */\r\n");
      out.write("	}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<footer class=\"position-fixed bottom-0  fotter-bg-color w-100 text-light text-center fixed-bottom\">\r\n");
      out.write("	<p class=\"mb-0\">&copy; 2023 飯店管理網站. 聯絡地址: . 聯絡電話:.</p>\r\n");
      out.write("</footer>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
