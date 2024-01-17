package com.example.dao;

import java.util.List;
import java.util.Optional;

import com.example.entity.Activity;

public interface ActivityDao {
	
	List<Activity> findAllActivities();
	
	Optional<Activity> findActivityById(Integer activityId);

<<<<<<< HEAD
}
=======
}
>>>>>>> branch 'w0616' of https://github.com/starcool0505/JavaProject-Hotel.git
