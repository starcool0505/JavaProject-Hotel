/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.71
 * Generated at: 2023-12-23 17:19:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class page1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/views/header.jsp", Long.valueOf(1703351746641L));
    _jspx_dependants.put("/WEB-INF/views/footer.jsp", Long.valueOf(1703351746640L));
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"UTF-8\">\r\n");
      out.write("		<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css\">\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"./css/main_color.css\">\r\n");
      out.write("		<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("		<script src=\"https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js\"></script>\r\n");
      out.write("	</head>\r\n");
      out.write("	<style>\r\n");
      out.write("  h2 {\r\n");
      out.write("       display: flex;\r\n");
      out.write("       justify-content: center;\r\n");
      out.write("       align-items: center;\r\n");
      out.write("   }\r\n");
      out.write("   .slogan {\r\n");
      out.write("       background-color: #afa07f; /* 背景顏色 */\r\n");
      out.write("       color:white;\r\n");
      out.write("       height:150px;\r\n");
      out.write("       display: flex;\r\n");
      out.write("       justify-content: center;\r\n");
      out.write("       align-items: center;\r\n");
      out.write("       padding: 20px; /* 可以添加内边距来增加文字区域的大小 */\r\n");
      out.write("      \r\n");
      out.write("   }\r\n");
      out.write("	 .slogan p{\r\n");
      out.write("	    text-align:center;\r\n");
      out.write("       line-height: 2;\r\n");
      out.write("	 }\r\n");
      out.write("	 /* 圖片 */\r\n");
      out.write("       .text-overlay {\r\n");
      out.write("           position: relative;\r\n");
      out.write("          width: 1000%; /* 圖片最大寬度為視窗寬度，如果視窗比圖片寬，則圖片保持原大小 */\r\n");
      out.write("			 height: auto; /* 讓圖片按比例縮放 */\r\n");
      out.write("          \r\n");
      out.write("       }\r\n");
      out.write("       .text-overlay .overlay-text {\r\n");
      out.write("           position: absolute;\r\n");
      out.write("           top: 50%;\r\n");
      out.write("           left: 50%;\r\n");
      out.write("           transform: translate(-50%, -50%);\r\n");
      out.write("           background-color: rgba(0, 0, 0, 0.5); /* 背景顏色 */\r\n");
      out.write("           color: white; /* 文字顏色 */\r\n");
      out.write("           padding: 30px;\r\n");
      out.write("           font-size: 16px; /* 調整字體大小 */\r\n");
      out.write("           line-height: 2.5; /* 調整行距 */\r\n");
      out.write("       }\r\n");
      out.write("       .about1{\r\n");
      out.write("       display:flex;\r\n");
      out.write("       background-color:#393939;\r\n");
      out.write("       }\r\n");
      out.write("       .about1 img{\r\n");
      out.write("       width:50%\r\n");
      out.write("      \r\n");
      out.write("       }\r\n");
      out.write("       .about1_1{\r\n");
      out.write("       width:50%\r\n");
      out.write("       background-color:transparent;\r\n");
      out.write("       display:flex;\r\n");
      out.write("       flex-grow: 1;\r\n");
      out.write("       flex-direction:column;\r\n");
      out.write("       align-items:center;\r\n");
      out.write("       justify-content: center;\r\n");
      out.write("        margin-right: 20px;\r\n");
      out.write("     \r\n");
      out.write("       }\r\n");
      out.write("       .about1_1 p{\r\n");
      out.write("       text-align:center;\r\n");
      out.write("       line-height: 2;\r\n");
      out.write("       color:white;\r\n");
      out.write("       }\r\n");
      out.write("      \r\n");
      out.write("       .about2{\r\n");
      out.write("       display:flex;\r\n");
      out.write("       background-color:#393939;\r\n");
      out.write("       }\r\n");
      out.write("       .about2 img{\r\n");
      out.write("       width:50%\r\n");
      out.write("      \r\n");
      out.write("       }\r\n");
      out.write("       .about2_1{\r\n");
      out.write("       width:50%\r\n");
      out.write("       background-color:transparent;\r\n");
      out.write("       display:flex;\r\n");
      out.write("       flex-grow: 1;\r\n");
      out.write("       flex-direction:column;\r\n");
      out.write("       align-items:center;\r\n");
      out.write("       justify-content: center;\r\n");
      out.write("       margin-right: 20px;\r\n");
      out.write("     \r\n");
      out.write("       }\r\n");
      out.write("      \r\n");
      out.write("       .about2_1 p{\r\n");
      out.write("       text-align:center;\r\n");
      out.write("       line-height: 2;\r\n");
      out.write("       color:white;\r\n");
      out.write("       }\r\n");
      out.write("      \r\n");
      out.write("       .about3{\r\n");
      out.write("       display:flex;\r\n");
      out.write("       background-color:#EBE3D5;\r\n");
      out.write("       justify-content:space-between;\r\n");
      out.write("       align-items:center;\r\n");
      out.write("       padding:80px  80px;\r\n");
      out.write("       }\r\n");
      out.write("       .about3 div{\r\n");
      out.write("       width:300px;\r\n");
      out.write("       text-align:center;\r\n");
      out.write("      \r\n");
      out.write("       }\r\n");
      out.write("       .about3 img{\r\n");
      out.write("       width:100%;\r\n");
      out.write("       border-radius:10px;\r\n");
      out.write("       }\r\n");
      out.write("      \r\n");
      out.write("       .about3 h4{\r\n");
      out.write("       margin-top: 20px;\r\n");
      out.write("       margin:20px o;\r\n");
      out.write("       font-weight: bold;\r\n");
      out.write("       }\r\n");
      out.write("      \r\n");
      out.write("       .about3 p{\r\n");
      out.write("       font-size:16px;\r\n");
      out.write("       }\r\n");
      out.write("	</style>\r\n");
      out.write("	\r\n");
      out.write("	<body class=\"bg_main0 vh-100\">\r\n");
      out.write("		\r\n");
      out.write("		<section class=\"news\" >\r\n");
      out.write("			<div class=\"text-overlay\" style=\"width: 100%; hight:auto\" >\r\n");
      out.write("		<img alt=\"\" src=\"images/pic5.jpg\" style=\"width: 100%; hight:auto\">\r\n");
      out.write("				<div class=\"overlay-text\">\r\n");
      out.write("		<p>歡迎來到我們的飯店，這裡融合了奢華與舒適，為您提供精緻的住宿體驗。<br>我們致力於營造溫馨且獨特的旅程，讓每位客人都感受到無比的尊榮與舒適。\r\n");
      out.write("		<br>我們熬過了疫情艱難的時刻,期待與您再次相會。<br>希望能在您愉快的旅程留下與我們的足跡。\r\n");
      out.write("		</p>\r\n");
      out.write("			</div>\r\n");
      out.write("				</div>\r\n");
      out.write("		</section>\r\n");
      out.write("		\r\n");
      out.write("		<section class=\"slogan\" >\r\n");
      out.write("		<p>我們自豪地提供32間寬敞舒適的客房，每一間融合了現代設計與溫馨氛圍。\r\n");
      out.write("		<br>在我們飯店，您會發現舒適度和品質不僅僅是承諾，更是我們的驕傲。\r\n");
      out.write("		<br>不論您是來度假還是商務出差，我們精心打造的住所將帶給您舒適與便利，讓您留下難忘美好的回憶。\r\n");
      out.write("		</p>\r\n");
      out.write("		</section>\r\n");
      out.write("		\r\n");
      out.write("		<section class=about1>\r\n");
      out.write("		<img alt=\"\" src=\"images/pic4.jpg\" >\r\n");
      out.write("		<div class=\"about1_1\">\r\n");
      out.write("		<p>我們引以為傲的床舖設計，\r\n");
      out.write("		<br>經過精心挑選的高品質床墊讓您一躺上去就能感受到家的溫暖。\r\n");
      out.write("		<br>我們的枕頭更是為了您的睡眠品質而精心打造，無論您喜歡柔軟還是支撐性的枕頭，\r\n");
      out.write("		<br>我們都能滿足您的需求。</p>\r\n");
      out.write("			</div>\r\n");
      out.write("		</section>\r\n");
      out.write("		\r\n");
      out.write("		<section class=about2>\r\n");
      out.write("			<div class=\"about2_1\">\r\n");
      out.write("		<p>當夜幕低垂，城市的燈火開始閃爍，位於城市中心的高樓大廈，欣賞令人讚嘆的夜景。\r\n");
      out.write("		<br>我們擁有觀景台或餐廳，讓你盡情欣賞夜晚城市的璀璨燈光，感受它所帶來的浪漫氛圍。\r\n");
      out.write("		<br>這種時刻讓人陶醉，也是與摯愛、家人或朋友共度美好時光的絕佳場所。</p>\r\n");
      out.write("			</div>\r\n");
      out.write("		<img alt=\"\" src=\"images/pic7.jpg\" >\r\n");
      out.write("	\r\n");
      out.write("		</section>\r\n");
      out.write("		\r\n");
      out.write("		<section class=about3>\r\n");
      out.write("			<div>\r\n");
      out.write("				<img alt=\"\" src=\"images/pic8.jpg\">\r\n");
      out.write("				<h4>全新浴室</h4>\r\n");
      out.write("				<p>擁有淋浴區以及浴缸<br>讓你洗去一身的疲勞</p>\r\n");
      out.write("			</div>\r\n");
      out.write("		\r\n");
      out.write("			<div>\r\n");
      out.write("				<img alt=\"\" src=\"images/pic9.jpg\">\r\n");
      out.write("				<h4>早餐自助吧</h4>\r\n");
      out.write("				<p>西式中式樣樣都有<br>吃飽迎接美好一天</p>\r\n");
      out.write("			</div>\r\n");
      out.write("		\r\n");
      out.write("			<div>\r\n");
      out.write("				<img alt=\"\" src=\"images/pic11.jpg\">\r\n");
      out.write("				<h4>自助洗衣間</h4>\r\n");
      out.write("				<p>洗衣烘乾都俱全<br>不用擔心無衣服穿</p>\r\n");
      out.write("			</div>\r\n");
      out.write("			\r\n");
      out.write("		</section>\r\n");
      out.write("	</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("    <style>\r\n");
      out.write("  /* 在這裡新增導覽列的背景色 */\r\n");
      out.write("  .fotter-bg-color {\r\n");
      out.write("    background-color: #B0A695;\r\n");
      out.write("     border: 1px solid transparent; /* 設定導覽列的邊框 */\r\n");
      out.write("    border-radius: 0; /* 可能需要將邊框的圓角設定為 0，視情況而定 */\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("</style>\r\n");
      out.write("<footer class=\"position-fixed bottom-0  fotter-bg-color w-100 text-light text-center fixed-bottom\">\r\n");
      out.write("  <p class=\"mb-0\">&copy; 2023 飯店管理網站. 聯絡地址: . 聯絡電話:.</p>\r\n");
      out.write("  </footer>\r\n");
      out.write("  <div style=\"height: 5vh;\"></div>");
      out.write('\r');
      out.write('\n');
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
