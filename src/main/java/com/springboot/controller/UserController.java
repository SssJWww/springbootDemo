package com.springboot.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/user")
public class UserController {
    @RequestMapping("/test")
    public String test() {
        return "this is allen";
    }
}
