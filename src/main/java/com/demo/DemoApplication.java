package com.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class DemoApplication {
	
	@GetMapping("/")
	public String testApi() {
		System.out.println("----------- First ---------");
		return "deployed......";
	}
	


	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
