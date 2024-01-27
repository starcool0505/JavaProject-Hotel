package com.example.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.BookDao;
import com.example.dao.RoomDaoImpl;
import com.example.dao.UserDao;
import com.example.entity.Book;
import com.example.entity.Room;
import com.example.entity.User;

@Controller
@RequestMapping("/testBook")
public class testBookController
{
	@Autowired
	RoomDaoImpl roomDaoImpl;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	BookDao bookDao;
	
	@GetMapping()
	public String testBook(Model model)
	{
		List<Room> rooms = roomDaoImpl.findAllRooms();
		model.addAttribute("rooms", rooms);
		
		return "testBook";
	}
	
	@PostMapping("/searchRooms")
	public String searchRooms(@RequestParam(value = "checkInDate", required = true) String checkInDate,
							  @RequestParam(value = "checkOutDate", required = true) String checkOutDate,
							  @RequestParam(value = "adult", required = false, defaultValue = "1") int adult,
							  @RequestParam(value = "child", required = false, defaultValue = "0") int child,
							  HttpSession session,
							  Model model)
	{
		// 后端验证，确保日期不为空
		if (checkInDate.isEmpty() || checkOutDate.isEmpty())
		{
			model.addAttribute("error", "請選擇日期");
			List<Room> rooms = roomDaoImpl.findAllRooms();
			model.addAttribute("rooms", rooms);
			return "testBook";
		}
		
		List<Room> rooms = roomDaoImpl.findAvailableRooms(checkInDate, checkOutDate, adult, child);
		model.addAttribute("rooms", rooms);
		
		// 將參數存入session
		session.setAttribute("checkInDate", checkInDate);
		session.setAttribute("checkOutDate", checkOutDate);
		session.setAttribute("adult", adult);
		session.setAttribute("child", child);
		
		boolean hasAvailableRooms = !rooms.isEmpty();
		model.addAttribute("hasAvailableRooms", hasAvailableRooms);
		
		return "testBook";
	}
	
	@GetMapping("/bookingCheck")
	public String bookingCheck(@RequestParam("roomId") int roomId, Model model, HttpSession session)
	{
		// 從session中獲取參數
		String checkInDate = (String) session.getAttribute("checkInDate");
		String checkOutDate = (String) session.getAttribute("checkOutDate");
		Integer adultInteger = (Integer) session.getAttribute("adult");
		Integer childInteger = (Integer) session.getAttribute("child");
		
		// 将roomId存入session
		session.setAttribute("selectedRoomId", roomId);
		
		// 檢查空值
		int adult = (adultInteger != null) ? adultInteger.intValue() : 1;
		int child = (childInteger != null) ? childInteger.intValue() : 0;
		
		//日期格式化
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		// 檢查空值
		LocalDate checkIn = null;
		if (checkInDate != null)
		{
			checkIn = LocalDate.parse(checkInDate, formatter);
		}
		LocalDate checkOut = null;
		if (checkOutDate != null)
		{
			checkOut = LocalDate.parse(checkOutDate, formatter);
		}
		
		// 計算入住天數
		long stayDays = 0;
		if (checkIn != null && checkOut != null)
		{
			stayDays = ChronoUnit.DAYS.between(checkIn, checkOut);
		}
		
		// 將參數傳遞到bookingCheck.jsp
		model.addAttribute("checkInDate", checkInDate);
		model.addAttribute("checkOutDate", checkOutDate);
		model.addAttribute("adult", adult);
		model.addAttribute("child", child);
		model.addAttribute("stayDays", stayDays);
		
		Room room = roomDaoImpl.findAllRoomById(roomId);
		model.addAttribute("room", room);
		
		// 從session中獲取使用者資訊
		User user = (User) session.getAttribute("user");
		if (user != null)
		{
			// 在這裡你可以使用user的相關資訊，例如user.getUsername()
			model.addAttribute("loggedInUsername", user.getUserName());
		}
		
		User userData = userDao.findAllByUserName(user.getUserName());
		model.addAttribute("userData", userData);
		
		return "bookingCheck";
	}
	
	@GetMapping("/pay")
	public String pay(Model model, HttpSession session)
	{
		// 從session中獲取使用者資訊
		User user = (User) session.getAttribute("user");
		if (user != null)
		{
			// 在這裡你可以使用user的相關資訊，例如user.getUsername()
			model.addAttribute("loggedInUsername", user.getUserName());
		}
		
		return "pay";
	}
	
	@GetMapping("/details")
	public String details(Model model, HttpSession session)
	{
		// 從session中獲取使用者資訊
		User user = (User) session.getAttribute("user");
		if (user != null)
		{
			// 在這裡你可以使用user的相關資訊，例如user.getUsername()
			model.addAttribute("loggedInUsername", user.getUserName());
		}
		
		User userData = userDao.findAllByUserName(user.getUserName());
		model.addAttribute("userData", userData);
		
		String checkInDate = (String) session.getAttribute("checkInDate");
		String checkOutDate = (String) session.getAttribute("checkOutDate");
		int adult = (int) session.getAttribute("adult");
		int child = (int) session.getAttribute("child");
		int roomId = (int) session.getAttribute("selectedRoomId");
		
		// 设置默认值和计算天数
		String specialReq = null;
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate checkIn = LocalDate.parse(checkInDate, formatter);
		LocalDate checkOut = LocalDate.parse(checkOutDate, formatter);
		long stayDays = ChronoUnit.DAYS.between(checkIn, checkOut);
		
		model.addAttribute("checkInDate", checkInDate);
		model.addAttribute("checkOutDate", checkOutDate);
		model.addAttribute("adult", adult);
		model.addAttribute("child", child);
		model.addAttribute("stayDays", stayDays);

		Room room = roomDaoImpl.findAllRoomById(roomId);
		model.addAttribute("room", room);
		
		// 根据 roomId 从数据库中获取房价，计算 bookPrice
		double bookPrice = room.getRoomPrice()*stayDays;
		model.addAttribute("bookPrice", bookPrice);
		
		// 將相關資訊設置到 Book 對象中
		Book book = new Book();
		book.setUserId(userData.getUserId());
		book.setRoomId(roomId);
		book.setCheckinDate(Date.valueOf(checkIn));
		book.setCheckoutDate(Date.valueOf(checkOut));
		book.setAdultNum(adult);
		book.setChildNum(child);
		book.setSepicalReq(specialReq);
		book.setBookPrice(bookPrice);

		// 調用 BookDao 的方法將訂單資訊插入資料庫
		bookDao.insertBook(book);
		
		// 获取生成的 bookId
		int bookId = book.getBookId();
		model.addAttribute("bookId", bookId);
		
		return "details";
	}
}