package com.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestApiController {
	
	@GetMapping("/test_api")
	public String testApi() {
		System.out.println("----------- test -----------***********************************");
		return "test";
	}
	
}
