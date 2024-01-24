package com.example.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dao.BookDao;
import com.example.entity.Book;

@Controller
@RequestMapping("/allBookData")
public class AllBookDataController
{
	@Autowired
	private BookDao bookDao;
	
	@GetMapping()
	public String historyBook(HttpSession session, Model model)
	{
		List<Book> allBooks = bookDao.findAllBookData();
		model.addAttribute("allBooks", allBooks);
		
		return "allBookData";
	}
}
