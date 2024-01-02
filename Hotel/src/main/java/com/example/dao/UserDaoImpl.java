package com.example.dao;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.entity.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public Optional<User> findUserById(Integer id) {
		
		String sql = "SELECT userId, userName, userPhone, userPassword, userType, userEmail, userBirth FROM hotel.user where userId=?";
		
		User user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class),id);
		
		return Optional.ofNullable(user);
	}

}
