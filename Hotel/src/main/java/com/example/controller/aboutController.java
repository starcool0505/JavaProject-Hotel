package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//關於我們about
@Controller
@RequestMapping(value = "/about")
public class aboutController {
   
	@GetMapping
    public String page1() {
        return "about"; // 注意這裡不需要加上 ".jsp"
    }
}
