package com.example.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.BookDaoImpl;
import com.example.dao.RoomDaoImpl;
import com.example.dao.UserDao;
import com.example.entity.Room;
import com.example.entity.User;

/**
 * http://localhost:8080/Hotel/mvc/page3
 */
@Controller
@RequestMapping("/book")
public class BookController {

	@Autowired
	BookDaoImpl bookDaoImpl;
	
	@Autowired
	RoomDaoImpl roomDaoImpl;
	
	@Autowired
	private UserDao userDao;
	
	/**
	 * http://localhost:8080/Hotel/mvc/book?checkInDate=2024-01-26&checkOutDate=2024-01-27&guests=1&roomId=201
	 * @param checkinDate
	 * @param checkoutDate
	 * @param guests
	 * @return
	 */
	@GetMapping()
	public String book(
			@RequestParam("checkInDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date checkinDate,
			@RequestParam("checkOutDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date checkoutDate,
			@RequestParam("guests") int guests,
			@RequestParam("roomId") int roomId, Model model, HttpSession session) {
		
		Room room = roomDaoImpl.findAllRoomById(roomId);
		model.addAttribute("room", room);
		
		// 計算日期差異
		long dateDifference = checkoutDate.getTime() - checkinDate.getTime();
		// 將毫秒轉換為天數
		long daysDifference = TimeUnit.DAYS.convert(dateDifference, TimeUnit.MILLISECONDS);
		// 將差異值添加到模型
		model.addAttribute("daysDifference", daysDifference);
		
		// 從session中獲取使用者資訊
		User user = (User) session.getAttribute("user");
		if (user != null) {
			// 在這裡你可以使用user的相關資訊，例如user.getUsername()
			model.addAttribute("loggedInUsername", user.getUserName());
		}
		
		User userData = userDao.findAllByUserName(user.getUserName());
		model.addAttribute("userData", userData);
		
		return "book";
	}
	
	@GetMapping("/bookDetail")
	public String bookDetail(Model model) {
		
		
		return "bookDetail";
	}
	
}