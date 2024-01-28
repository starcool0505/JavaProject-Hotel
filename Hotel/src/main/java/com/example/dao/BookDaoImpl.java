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
public class BookDaoImpl implements BookDao
{
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Book> findBookDataByUsername(String username)
	{
		String sql = "SELECT b.bookId, b.bookName, b.bookPhone, b.roomId, b.checkinDate, b.checkoutDate, b.bookPrice "
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
	
	@Override
	public List<Book> findAllBooks() {
		String sql = "SELECT bookId, bookId, roomId, checkinDate, checkoutDate, adultNum, childNum, sepicalReq, bookPrice FROM hotel.room";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Book.class));

	}

	@Override
	public Optional<Book> findBookById(Integer bookId) {
		String sql = "select bookId, bookName, bookPhone, roomId, checkinDate, checkoutDate, adultNum, childNum, sepicalReq, bookPrice from book where bookId = ?";
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
		String sql = "insert into book( userId, bookName, bookPhone, bookEmail, roomId, checkinDate, checkoutDate, adultNum, childNum, specialReq, bookPrice) values(?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, book.getUserId(), book.getBookName(), book.getBookPhone(),book.getBookEmail(),book.getRoomId(), book.getCheckinDate(), book.getCheckoutDate(), book.getAdultNum(), book.getChildNum(), book.getSepicalReq(), book.getBookPrice());
	}

	@Override
	public void deleteBook(Book book) {
		String sql = "delete from book where bookId = ?";
		jdbcTemplate.update(sql, book.getSepicalReq(), book.getBookPrice());
	}
}
