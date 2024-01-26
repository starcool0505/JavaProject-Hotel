package com.example.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dao.UserDao;
import com.example.entity.User;


/**
 * http://localhost:8080/Hotel/mvc/login
 */

@Controller
@RequestMapping()
public class LoginController
{
	@Autowired
	private UserDao userDao;
	
	@GetMapping("/login")
	public String loginPage()
	{
		return "login";
	}
	
	// 前台登入處理
	@PostMapping("/login")
	public String login(@RequestParam("username") String username,
						@RequestParam("password") String password,
						HttpSession session, Model model)
	{
		// 根據 username 查找 user 物件
		Optional<User> userOptional = userDao.findUserByUserName(username);
		model.addAttribute("username", username);
		
		if(userOptional.isPresent())
		{
			User user = userOptional.get();
			// 比對 password
			if(user.getUserPassword().equals(password))
			{
				session.setAttribute("user", user); // 將 user 物件放入到 session 變數中
				
				Optional<Integer> userTypeOptional = userDao.findUserTypeByUserName(username);
				userTypeOptional.ifPresent(userType -> session.setAttribute("userType", userType));
				
				return "redirect:/mvc/index"; // OK, 導向前台首頁
				
			}
			else
			{
				session.invalidate(); // session 過期失效
				model.addAttribute("passwordError", "密碼錯誤");
				return "login";
			}
		}
		else
		{
			session.invalidate(); // session 過期失效
			model.addAttribute("error", "查無使用者");
			return "login";
		}
	}
	
	// 登出
	@GetMapping("/logout")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/mvc/login";
	}
	
	@GetMapping("/checkLogin")
	@ResponseBody
	public ResponseEntity<String> checkLogin(HttpSession session) {
	    if (session.getAttribute("user") != null) {
	        return ResponseEntity.ok("User is logged in");
	    } else {
	        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("User is not logged in");
	    }
	}

}