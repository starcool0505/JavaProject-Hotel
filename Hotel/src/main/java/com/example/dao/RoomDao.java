package com.example.dao;

import java.util.List;

import com.example.entity.Room;

public interface RoomDao
{
	List<Room> findAllRooms();
	
	Room findRoomById(int roomId);
}