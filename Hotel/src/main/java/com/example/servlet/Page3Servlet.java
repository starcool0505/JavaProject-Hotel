/*package com.example.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.RoomDaoImpl;
import com.example.entity.Room;
/**
 * http://localhost:8080/Hotel/page3
 */
/*@WebServlet(value = "/page3")
public class Page3Servlet extends HttpServlet {

	public static RoomDaoImpl roomDaoImpl = new RoomDaoImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Room> rooms = roomDaoImpl.findAllRooms();
		
		String[] roomImgPaths = rooms.stream().map(Room::getRoomPic).toArray(String[]::new);
		String[] roomTitle = rooms.stream().map(Room::getRoomType).toArray(String[]::new);
		String[] roomType = rooms.stream().map(Room::getRoomType).toArray(String[]::new);
		String[] roomContext = rooms.stream().map(Room::getRoomDescription).toArray(String[]::new);
		
		req.setAttribute("roomImgPaths", roomImgPaths);
		req.setAttribute("roomTitle", roomTitle);
		req.setAttribute("roomType", roomType);
		req.setAttribute("roomContext", roomContext);

		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/views/page3.jsp");
		rd.forward(req, resp);
		
	}

}*/
