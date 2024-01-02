package com.example.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.Optional;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.example.entity.User;

public class UserDaoImpl implements UserDao {

    private static DataSource dataSource;
    
    static {
    	if(dataSource == null) {
			try {
				Context ctx = new InitialContext();
				dataSource = (DataSource) ctx.lookup("java:/comp/env/jdbc/web");
			} catch (Exception e) {}
		}
    }
	
	@Override
	public Optional<User> findUserById(Integer id) {
		
		String sql = "SELECT userId, userName, userPhone, userPassword, userType, userEmail, userBirth FROM hotel.user where userId=?";
		
		try (Connection conn = dataSource.getConnection();
			 PreparedStatement pst = conn.prepareStatement(sql);){
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("userId"));
				user.setUserName(rs.getString("userName"));
				user.setUserPhone(rs.getString("userPhone"));
				user.setUserPassword(rs.getString("userPassword"));
				user.setUserType(rs.getInt("userType"));
				user.setUserEmail(rs.getString("userEmail"));
				user.setUserBirth(new Date(rs.getDate("userBirth").getTime()));
				return Optional.of(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return Optional.empty();
	}

}
