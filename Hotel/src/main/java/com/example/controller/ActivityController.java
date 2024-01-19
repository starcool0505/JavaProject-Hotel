package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dao.ActivityDaoImpl;
import com.example.entity.Activity;

/**
 * 最新消息
 * http://localhost:8080/Hotel/mvc/activity -> activities
 * http://localhost:8080/Hotel/mvc/activity/1 -> activity
 * http://localhost:8080/Hotel/mvc/activity/1/3 -> X (不匹配)
 */
@Controller
@RequestMapping("/activity")
public class ActivityController {

	@Autowired
	ActivityDaoImpl activityDaoImpl;

	@GetMapping()
	public String activities(Model model) {
		List<Activity> activities = activityDaoImpl.findAllActivities();
		model.addAttribute("activities", activities);
		return "activities";
	}
	
	@GetMapping("/{acticityId}")
	public String activity(@PathVariable("acticityId") Integer acticityId,Model model) {
		Activity activity = activityDaoImpl.findActivityById(acticityId).get();
		model.addAttribute("activity", activity);
		return "activity";
	}

}
