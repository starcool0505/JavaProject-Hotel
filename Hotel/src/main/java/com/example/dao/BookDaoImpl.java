package com.example.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.entity.Book;

@Repository
public class BookDaoImpl implements BookDao
{
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Book> findBookDataByUsername(String username)
	{
		String sql = "SELECT b.bookId, b.roomId, b.checkinDate, b.checkoutDate, b.bookPrice "
					+"FROM book b "
					+"JOIN user u ON b.userId = u.userId "
					+"WHERE u.userName = ?";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Book.class), username);
	}

	@Override
	public List<Book> findAllBookData()
	{
		String sql = "SELECT b.bookId, b.userId, b.roomId, u.userName, u.userPhone, b.checkinDate, b.checkoutDate, (b.adultNum + b.childNum) AS totalGuests, b.specialReq, b.bookPrice "
				+ "FROM hotel.book b "
				+ "JOIN hotel.user u ON b.userId = u.userId";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Book.class));
	}
	
	
}
