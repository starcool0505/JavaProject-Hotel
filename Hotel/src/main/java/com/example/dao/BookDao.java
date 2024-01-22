package com.example.dao;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import com.example.entity.Book;
import com.example.entity.Room;

public interface BookDao {
	// 1. 查詢所有訂單(多筆)
	List<Book> findAllBooks();
	
	// 2. 根據訂單編號查詢訂單(單筆)
	Optional<Book> findBookById(Integer bookId);
	
	// 3. 根據日期和數量查詢空房
	List<Room> findAvailableRoom(Date checkinDate, Date checkoutDate, int guests);
	
	// 4. 新增訂單
	void addBook(Book book);
	
	// 5. 刪除訂單
	void deleteBook(Book book);
}
