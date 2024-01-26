package com.example.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoomEquipment
{
	Integer roomId;
	Integer equId;
	String equName;
	String equPath;
}