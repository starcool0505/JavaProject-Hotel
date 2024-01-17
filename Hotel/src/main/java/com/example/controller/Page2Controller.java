package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//最新消息page2
//http://localhost:8080/Hotel/mvc/page2
@Controller
@RequestMapping("/page2")
public class Page2Controller {
	
    public String page2() {
        return  "page2"; 
    }
	
}
