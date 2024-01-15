package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//首頁
@Controller
public class IndexController {
	@RequestMapping(value = "/index")
    public String index() {
       
        return  "index.jsp"; 
    }
}
