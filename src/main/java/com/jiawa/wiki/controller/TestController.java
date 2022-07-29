package com.jiawa.wiki.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @Value("${test.hello:TEST}")
    private String testhello;

    @RequestMapping("/hello")
    public String hello(){
        return "Hello World!"+ testhello;
    }
    @PostMapping("/hello/post")
    public String helloPost(String name){
        return "Hello World! Post, " + name;
    }
}
