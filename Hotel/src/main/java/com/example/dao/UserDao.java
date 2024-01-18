package com.example.dao;

import java.util.Optional;

import com.example.entity.User;

public interface UserDao
{
	Optional<User> findUserById(Integer id);
	
	Optional<User> findUserByUserName(String username);
}
