package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * http://localhost:8080/Hotel/mvc/login
 */

@Controller
@RequestMapping("/login")
public class LoginController
{
	@GetMapping()
	public String login()
	{
		return "login";
	}
}