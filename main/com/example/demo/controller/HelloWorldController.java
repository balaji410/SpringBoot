package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
	
	@GetMapping("/Hello")
public String sayHello() {
	System.out.println("Hello world from GET API");
	
	return "Hello world from GET API";
}

}

