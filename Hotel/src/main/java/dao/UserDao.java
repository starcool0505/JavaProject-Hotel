package dao;

import java.util.Optional;

import entity.User;

public interface UserDao {
	Optional<User> findUserById(Integer id);
}
