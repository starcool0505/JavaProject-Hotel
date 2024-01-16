package com.example.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.entity.Equipment;

@Repository
public class EquipmentDaoImpl implements EquipmentDao
{
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public Equipment findAllEquipmentsById(int equId)
	{
		String sql = "SELECT equId, equName, equPath FROM hotel.equipment where equId=?;";
		return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Equipment.class), equId);
	}
	
	@Override
	public List<Equipment> findAllEquipments()
	{
		String sql = "SELECT equId, equName, equPath FROM hotel.equipment";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Equipment.class));
	}
}