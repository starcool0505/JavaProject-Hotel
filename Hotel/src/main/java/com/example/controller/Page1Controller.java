package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//關於我們page1
@Controller
@RequestMapping(value = "/page1")
public class Page1Controller {
   
    public String page1() {
        return "page1"; // 注意這裡不需要加上 ".jsp"
    }
}
