package com.example.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.entity.Room;

/*你好*/

@Repository
public class RoomDaoImpl implements RoomDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Room> findAllRooms() {
		String sql = "SELECT roomId, roomType, defaultRoomPrice, roomPrice, roomPic, roomDescription FROM hotel.room";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Room.class));

	}

}
