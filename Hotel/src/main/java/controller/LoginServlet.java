package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		
		if("user".equals(username)&&"123".equals(password))
		{
			resp.sendRedirect("./");
		}
		else
		{
			req.setAttribute("error", "帳號或密碼輸入錯誤！");
			RequestDispatcher rd = req.getRequestDispatcher("./login.jsp");
			rd.forward(req, resp);
		}
	}
}