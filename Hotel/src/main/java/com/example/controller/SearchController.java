package com.example.controller;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.BookDaoImpl;
import com.example.dao.RoomDaoImpl;
import com.example.entity.Book;
import com.example.entity.Room;

/**
 * http://localhost:8080/Hotel/mvc/searchRoom
 */
@Controller
@RequestMapping("/searchRoom")
public class SearchController
{
	@Autowired
	RoomDaoImpl roomDaoImpl;
	
	@Autowired
	BookDaoImpl bookDaoImpl;
	
	@GetMapping()
	public String searchRoom(Model model)
	{
		
		List<Room> rooms = roomDaoImpl.findAllRooms();
		
		model.addAttribute("rooms", rooms);
		

		List<Integer> roomId = rooms.stream().map(Room::getRoomId).collect(Collectors.toList());
		List<String> roomImgPaths = rooms.stream().map(Room::getRoomImgPaths).collect(Collectors.toList());
		List<String> roomTitle = rooms.stream().map(Room::getRoomTitle).collect(Collectors.toList());
		List<String> roomType = rooms.stream().map(Room::getRoomType).collect(Collectors.toList());
		List<String> roomContext = rooms.stream().map(Room::getRoomContext).collect(Collectors.toList());
		List<String> roomDescribe = rooms.stream().map(Room::getRoomDescribe).collect(Collectors.toList());

		model.addAttribute("roomId", roomId);
		model.addAttribute("roomImgPaths", roomImgPaths);
		model.addAttribute("roomTitle", roomTitle);
		model.addAttribute("roomType", roomType);
		model.addAttribute("roomContext", roomContext);
		model.addAttribute("roomDescribe", roomDescribe);

		
		return "searchRoom";
	}
	
	@GetMapping("/room_index/{roomId}")
	public String showRoomIndex(@PathVariable int roomId, Model model)
	{
		Room room = roomDaoImpl.findRoomById(roomId);
		
		model.addAttribute("roomId", roomId);
		model.addAttribute("room", room);
		
		return "room_index";
	}
	
	@GetMapping("/showRooms")
    public ResponseEntity<List<Book>> searchRooms(@RequestParam Date checkinDate, @RequestParam int guests) {
        List<Book> availableRooms = bookDaoImpl.findAvailableRoom(checkinDate, guests);
        return ResponseEntity.ok(availableRooms);
    }

}