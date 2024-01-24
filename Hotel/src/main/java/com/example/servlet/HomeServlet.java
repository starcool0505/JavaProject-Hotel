package com.example.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 導頁(轉址)功能
 * http://localhost:8080/Hotel/ -> http://localhost:8080/Hotel/mvc/index
 * http://localhost:8080/Hotel  -> http://localhost:8080/Hotel/mvc/index
 */
@WebServlet(value = {"/" , ""})
public class HomeServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect("/Hotel/mvc/index");
	}
}
