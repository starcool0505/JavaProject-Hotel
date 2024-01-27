package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dao.ActivityDaoImpl;
import com.example.entity.Activity;

/**
 * http://localhost:8080/Hotel/mvc/index
 */
@Controller
@RequestMapping("/index")
public class IndexController
{
	@Autowired
	private ActivityDaoImpl activityDaoImpl;

	@GetMapping
	public String index(Model model)
	{
		List<Activity> activities = activityDaoImpl.findAllActivities();
		model.addAttribute("activities", activities);
		return "index";
	}
}
