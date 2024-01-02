package entity;


import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

	Integer userId;
	String userName;
	String userPhone;
	String userPassword;
	Integer userType;
	String userEmail;
	Date userBirth;
}
