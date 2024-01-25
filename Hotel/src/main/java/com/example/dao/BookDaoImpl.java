package com.example.dao;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.entity.Book;
import com.example.entity.Room;

@Repository
public class BookDaoImpl implements BookDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Book> findAllBooks() {
		String sql = "SELECT bookId, bookId, roomId, checkinDate, checkoutDate, adultNum, childNum, sepicalReq, bookPrice FROM hotel.room";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Book.class));

	}

	@Override
	public Optional<Book> findBookById(Integer bookId) {
		String sql = "select bookId, roomId, checkinDate, checkoutDate, adultNum, childNum, sepicalReq, bookPrice from book where bookId = ?";
		try {
			Book book = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Book.class), bookId);
			return Optional.ofNullable(book);
		} catch (EmptyResultDataAccessException e) {
			return Optional.empty();
		}
	}

	@Override
	public List<Room> findAvailableRoom(Date checkinDate, Date checkoutDate, int guests) {
		String sql = "SELECT r.roomId, r.roomTitle, r.roomType, r.roomImgPaths, r.roomContext, r.roomDescribe, r.defaultRoomPrice, r.roomPrice, r.roomOpacity " +
	            "FROM room r " +
	            "LEFT JOIN book b ON r.roomId = b.roomId " +
	            "WHERE (b.bookId IS NULL OR (b.checkinDate > ? OR b.checkoutDate < ?)) " +
	            "AND ? <= r.roomOpacity";

	    return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Room.class), checkinDate, checkoutDate, guests);
	}

	
	@Override
	public void addBook(Book book) {
		String sql = "insert into book(roomId, checkinDate, checkoutDate, adultNum, childNum, sepicalReq, bookPrice) values(?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, book.getRoomId(), book.getCheckinDate(), book.getCheckoutDate(), book.getAdultNum(), book.getChildNum(), book.getSepicalReq(), book.getBookPrice());
	}

	@Override
	public void deleteBook(Book book) {
		String sql = "delete from book where bookId = ?";
		jdbcTemplate.update(sql,  book.getSepicalReq(), book.getBookPrice());
	}

}
