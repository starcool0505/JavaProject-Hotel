package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//最新消息page2
@Controller
public class Page2Controller {
	@RequestMapping(value = "/page2")
    public String page2() {
       
        return  "page2.jsp"; 
    }
}
