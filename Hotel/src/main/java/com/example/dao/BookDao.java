package com.example.dao;

import java.util.List;
import java.util.Optional;

import com.example.entity.Book;

public interface BookDao {
	// 1. 查詢所有訂單(多筆)
	List<Book> findAllBooks();
	
	// 2. 根據訂單編號查詢訂單(單筆)
	Optional<Book> findBookById(Integer bookId);
	
	// 3. 新增訂單
	void addBook(Book book);
	
	// 4. 刪除訂單
	void deleteBook(Book book);
}
