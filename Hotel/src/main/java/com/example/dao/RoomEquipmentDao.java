package com.example.dao;

import java.util.List;

import com.example.entity.RoomEquipment;

public interface RoomEquipmentDao
{
	List<RoomEquipment> findEquipmentDataByRoomId(int roomId);
}
