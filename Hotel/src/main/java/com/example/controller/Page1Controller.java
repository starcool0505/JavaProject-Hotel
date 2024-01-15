package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//關於我們page1
@Controller
public class Page1Controller {
	@RequestMapping(value = "views/page1")
    public String page1() {
       
        return  "page1.jsp"; 
    }
}
