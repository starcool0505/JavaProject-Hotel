package com.example.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/historyBook")
public class HistoryBookController
{
	@GetMapping()
	public String historyBook(Model model)
	{
		return "historyBook";
	}
}
