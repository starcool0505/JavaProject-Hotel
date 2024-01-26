package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * http://localhost:8080/Hotel/mvc/searchRoom
 */
@Controller
@RequestMapping("/transportation")
public class TransController{
	
	@GetMapping()
	public String transportation(Model model){
		return "transportation";
	}
	
}