package com.example.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.entity.RoomEquipment;

@Repository
public class RoomEquipmentDaoImpl implements RoomEquipmentDao
{
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	@Override
	public List<RoomEquipment> findEquipmentDataByRoomId(int roomId)
	{
		String sql = "SELECT re.roomId, re.equId, e.equName, e.equPath "
				   + "FROM roomequipment re "
				   + "INNER JOIN equipment e ON re.equId = e.equId "
				   + "WHERE re.roomId = ?";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(RoomEquipment.class), roomId);
	}
}
