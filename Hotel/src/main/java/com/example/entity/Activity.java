package com.example.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Activity {
	Integer activityId;
	String activityImgPath;
	String activityName;
	Date activityDate;
	String activityDescription;
}

//實體表格,寫進來java