package com.example.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.entity.Room;

@Repository
public class RoomDaoImpl implements RoomDao
{
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Room> findAllRooms()
	{
		String sql = "SELECT roomId, roomTitle, roomType, roomImgPaths, roomContext, roomDescribe, defaultRoomPrice, roomPrice FROM hotel.room";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Room.class));
	}
	
	@Override
	public Room findAllRoomById(int roomId)
	{
		String sql = "SELECT roomId, roomTitle, roomType, roomImgPaths, roomContext, roomDescribe, defaultRoomPrice, roomPrice FROM hotel.room WHERE roomId = ?";
		return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Room.class), roomId);
	}

	@Override
	public List<Room> findAllTitles()
	{
		String sql = "SELECT roomId, roomTitle FROM hotel.room";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Room.class));
	}

	
}