package com.example.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book
{
	Integer bookId;
	Integer userId;
	Integer roomId;
	Date checkinDate;
	Date checkoutDate;
	Integer adultNum;
	Integer childNum;
	String sepicalReq;
	Double bookPrice;
}
