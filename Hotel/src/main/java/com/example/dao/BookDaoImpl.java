package com.example.dao;

import java.sql.PreparedStatement;
import java.sql.Statement;
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
	
	@Override
	public void insertBook(Book book)
	{
		String sql = "INSERT INTO book (userId, roomId, checkinDate, checkoutDate, adultNum, childNum, specialReq, bookPrice) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		
		// 使用全路径指定的类型
		org.springframework.jdbc.support.KeyHolder keyHolder = new org.springframework.jdbc.support.GeneratedKeyHolder();
		
		jdbcTemplate.update(connection ->
		{
			PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, book.getUserId());
			ps.setInt(2, book.getRoomId());
			ps.setDate(3, new java.sql.Date(book.getCheckinDate().getTime()));
			ps.setDate(4, new java.sql.Date(book.getCheckoutDate().getTime()));
			ps.setInt(5, book.getAdultNum());
			ps.setInt(6, book.getChildNum());
			ps.setString(7, book.getSpecialReq());
			ps.setDouble(8, book.getBookPrice());
			return ps;
		}, keyHolder);
		
		// 檢查 keyHolder 是否有生成的主鍵
		if (keyHolder.getKey() != null)
		{
			// 如果有生成的主鍵，將其轉換為整數並設定到 Book 物件的 bookId 屬性中
			book.setBookId(keyHolder.getKey().intValue());
		}
		else
		{
			// 如果未能生成主鍵，拋出運行時異常，表示未能檢索到為 book 生成的主鍵
			throw new RuntimeException("Failed to retrieve the generated key for the book");
		}
	}
}
