package com.example.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/*你好*/

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Room {

	Integer roomId;
	String roomType;
	Double defaultRoomPrice;
	Double roomPrice;
	String roomPic;
	String roomDescription;
}
