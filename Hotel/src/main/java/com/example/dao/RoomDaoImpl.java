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
	
	@Override
	public List<Room> findAvailableRooms(String checkInDate, String checkOutDate, int adult, int child)
	{
		String sql = "SELECT room.roomId, room.roomTitle, room.roomType, room.roomImgPaths, room.roomContext, room.roomDescribe, room.defaultRoomPrice, room.roomPrice, room.roomOpacity "
					+"FROM room "
					+"LEFT JOIN "
					+"( "
					+"	SELECT roomId "
					+"	FROM book "
					+"	WHERE NOT "
					+"	( "
					+"		checkoutDate <= ? "
					+"		OR checkinDate >= ? "
					+"	) "
					+") booked_rooms ON room.roomId = booked_rooms.roomId "
					+"WHERE booked_rooms.roomId IS NULL "
					+"AND room.roomOpacity >= ?";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Room.class), checkInDate, checkOutDate, adult + child);
	}
}
