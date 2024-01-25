package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dao.BookDaoImpl;
import com.example.dao.RoomDaoImpl;

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
	
	@GetMapping()
	public String page3(Model model) {
		
//		List<Book> books = bookDaoImpl.findAllBooks();
//		
//		String[] roomTitle = rooms.stream().map(Room::getRoomType).toArray(String[]::new);
//		List<String> roomType = rooms.stream().map(Room::getRoomType).collect(Collectors.toList());
//		String[] roomContext = rooms.stream().map(Room::getRoomDescription).toArray(String[]::new);
//		
//		model.addAttribute("roomImgPaths", roomImgPaths);
//		model.addAttribute("roomTitle", roomTitle);
//		model.addAttribute("roomType", roomType);
//		model.addAttribute("roomContext", roomContext);
		
		return "book";
	}
	
	@GetMapping("/bookDetail")
	public String bookDetail(Model model) {
		
//		List<Book> books = bookDaoImpl.findAllBooks();
//		
//		String[] roomTitle = rooms.stream().map(Room::getRoomType).toArray(String[]::new);
//		List<String> roomType = rooms.stream().map(Room::getRoomType).collect(Collectors.toList());
//		String[] roomContext = rooms.stream().map(Room::getRoomDescription).toArray(String[]::new);
//		
//		model.addAttribute("roomImgPaths", roomImgPaths);
//		model.addAttribute("roomTitle", roomTitle);
//		model.addAttribute("roomType", roomType);
//		model.addAttribute("roomContext", roomContext);
		
		return "bookDetail";
	}
	
}