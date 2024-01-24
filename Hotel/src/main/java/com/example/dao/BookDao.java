package com.example.dao;

import java.util.List;

import com.example.entity.Book;

public interface BookDao
{
	List<Book> findBookDataByUsername(String username);
	List<Book> findAllBookData();
}