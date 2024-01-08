package com.example.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Room
{
	Integer roomId;
	String roomTitle;
	String roomType;
	String roomImgPaths;
	String roomContext;
	String roomDescribe;
	Double defaultRoomPrice;
	Double roomPrice;
}
