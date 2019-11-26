package com.example.jzcx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value = "/Jzcx/")
@Controller
public class Main {

    @RequestMapping(value = "index")
    public String main(){
        return "jzcx/index";
    }
}
