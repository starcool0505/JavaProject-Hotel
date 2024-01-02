package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dao.RoomDaoImpl;
import com.example.entity.Room;

/**
 * http://localhost:8080/Hotel/mvc/page3
 */
@Controller
@RequestMapping("/page3")
public class Page3Controller {

	@Autowired
	RoomDaoImpl roomDaoImpl;
	
	@GetMapping()
	public String page3(Model model) {
		
		List<Room> rooms = roomDaoImpl.findAllRooms();
		
		String[] roomImgPaths = rooms.stream().map(Room::getRoomPic).toArray(String[]::new);
		String[] roomTitle = rooms.stream().map(Room::getRoomType).toArray(String[]::new);
		String[] roomType = rooms.stream().map(Room::getRoomType).toArray(String[]::new);
		String[] roomContext = rooms.stream().map(Room::getRoomDescription).toArray(String[]::new);
		
		model.addAttribute("roomImgPaths", roomImgPaths);
		model.addAttribute("roomTitle", roomTitle);
		model.addAttribute("roomType", roomType);
		model.addAttribute("roomContext", roomContext);
		
		return "page3";
	}
	
}
