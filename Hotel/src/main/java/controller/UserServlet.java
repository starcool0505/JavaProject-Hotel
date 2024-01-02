package controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDaoImpl;
import entity.User;

/**
 * http://localhost:8080/user?id=101
 */
@WebServlet("/user")
public class UserServlet extends HttpServlet{

	public static UserDaoImpl userDaoImpl;
	
	static {
		userDaoImpl = new UserDaoImpl();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		Optional<User> userOpt =  userDaoImpl.findUserById(Integer.parseInt(id));
		
		if(userOpt.isPresent()) {
			resp.getWriter().write(userOpt.get().toString());
			return;
		} 
		
		resp.getWriter().write("查無此人");
		
	}

	
}
