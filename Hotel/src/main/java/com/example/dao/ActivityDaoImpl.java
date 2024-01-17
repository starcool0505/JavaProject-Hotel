package com.example.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.entity.Activity;

@Repository
public class ActivityDaoImpl implements ActivityDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Activity> findAllActivities() {
		String sql = "SELECT activityId, activityImgPath, activityName, activityDate, activityDescription FROM web.activity";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Activity.class));
	}

	@Override
	public Optional<Activity> findActivityById(Integer activityId) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}
	
}
