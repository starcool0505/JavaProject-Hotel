package com.example.dao;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.entity.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public Optional<User> findUserById(Integer id)
	{
		String sql = "SELECT userId, userName, userPhone, userPassword, userType, userEmail, userBirth FROM hotel.user where userId=?";
		User user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), id);
		return Optional.ofNullable(user);
	}

	@Override
	public Optional<User> findUserByUserName(String username)
	{
		String sql="SELECT userName, userPassword FROM hotel.user where userName=?";
		try
		{
			User user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), username);
			return Optional.ofNullable(user);
		}
		catch(EmptyResultDataAccessException e)
		{
			return Optional.empty();
		}
	}
	
	@Override
	public Optional<Integer> findUserTypeByUserName(String username)
	{
		String sql = "SELECT userType FROM hotel.user where userName=?";
		try
		{
			Integer userType = jdbcTemplate.queryForObject(sql, Integer.class, username);
			return Optional.ofNullable(userType);
		}
		catch (EmptyResultDataAccessException e)
		{
			return Optional.empty();
		}
	}

	@Override
	public User findAllByUserName(String username)
	{
		String sql = "SELECT * FROM hotel.user where userName=?";
		return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), username);
	}
}
