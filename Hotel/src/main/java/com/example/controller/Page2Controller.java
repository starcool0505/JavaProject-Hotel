package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dao.ActivityDaoImpl;
import com.example.dao.RoomDaoImpl;
import com.example.entity.Activity;
import com.example.entity.Room;

//最新消息page2
//http://localhost:8080/Hotel/mvc/page2.jsp
@Controller
@RequestMapping("/page2")
public class Page2Controller {


		@Autowired
		ActivityDaoImpl activityDaoImpl;
		
		@GetMapping()
		public String page2(Model model) {
			
			List<Activity> Activities = activityDaoImpl.findAllActivities();
			
			String[] activityImgPath = Activities.stream().map(Activity::getActivityImgPath).toArray(String[]::new);
			String[] activityName = Activities.stream().map(Activity::getActivityName).toArray(String[]::new);
			String[] activityDate = Activities.stream().map(Activity::getActivityDate).toArray(String[]::new);
			String[] activityDescription = Activities.stream().map(Activity::getActivityDescription).toArray(String[]::new);
			
			model.addAttribute("activityImgPath", activityImgPath);
			model.addAttribute("activityName", activityName);
			model.addAttribute("activityDate", activityDate);
			model.addAttribute("activityDescription", activityDescription);
			
			return "page2";
		}
		
		
	}

  
	

