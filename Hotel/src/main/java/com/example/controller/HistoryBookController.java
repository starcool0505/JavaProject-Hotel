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
import com.example.entity.User;

@Controller
@RequestMapping("/historyBook")
public class HistoryBookController
{
	@Autowired
	private BookDao bookDao;
	
	@GetMapping()
	public String historyBook(HttpSession session, Model model)
	{
		User loggedInUser = (User) session.getAttribute("user");
		if (loggedInUser != null)
		{
			String username = loggedInUser.getUserName();
			
			// 使用用户名调用BookDao中的方法来获取历史订单数据
			List<Book> historyBooks = bookDao.findBookDataByUsername(username);
			model.addAttribute("historyBooks", historyBooks);
		}
		return "historyBook";
	}
}
