package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dao.RoomDaoImpl;
import com.example.dao.RoomEquipmentDaoImpl;
import com.example.entity.Room;
import com.example.entity.RoomEquipment;

/**
 * http://localhost:8080/Hotel/mvc/page3
 */
@Controller
@RequestMapping("/room_list")
public class Room_listController
{
	@Autowired
	RoomDaoImpl roomDaoImpl;
	
	@Autowired
	RoomEquipmentDaoImpl roomEquipmentDaoImpl;
	
	@GetMapping()
	public String room_list(Model model)
	{
		
		List<Room> rooms = roomDaoImpl.findAllRooms();
		model.addAttribute("rooms", rooms);
		
		return "room_list";
	}
	
	@GetMapping("/room_index/{roomId}")
	public String showRoomIndex(@PathVariable int roomId, Model model)
	{
		Room room = roomDaoImpl.findAllRoomById(roomId);
		model.addAttribute("roomId", roomId);
		model.addAttribute("room", room);
		
		List<Room> titles = roomDaoImpl.findAllTitles();
		model.addAttribute("titles", titles);
		
		List<RoomEquipment> roomEquipments = roomEquipmentDaoImpl.findEquipmentDataByRoomId(roomId);
		model.addAttribute("roomEquipments", roomEquipments);
		
		return "room_index";
	}

}
