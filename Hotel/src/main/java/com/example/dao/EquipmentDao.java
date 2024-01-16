package com.example.dao;

import java.util.List;

import com.example.entity.Equipment;

public interface EquipmentDao
{
	Equipment findAllEquipmentsById(int equId);
	List<Equipment> findAllEquipments();
}
