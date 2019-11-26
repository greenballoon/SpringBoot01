package com.example.jzcx;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Test {

    @RequestMapping(value = "/test")
    public String test(){

        return "hello";
    }
}
