package com.example.dao;

import java.util.List;
import java.util.Optional;

import com.example.entity.Activity;

public interface ActivityDao {
	
	List<Activity> findAllActivities();
	
	Optional<Activity> findActivityById(Integer activityId);

}