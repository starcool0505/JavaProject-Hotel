package com.example.controller;

import java.util.Date;
import java.util.List;

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
import com.example.entity.Room;

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
            @RequestParam("adult") int adult,
			@RequestParam("child") int child,
            @RequestParam("roomId") int roomId, Model model) {
		
		List<Room> rooms = roomDaoImpl.findAllRooms();
		model.addAttribute("rooms", rooms);
		
		return "book";
	}
	
	@GetMapping("/bookDetail")
	public String bookDetail(Model model) {
		
		return "bookDetail";
	}
	
}