package com.example.demospring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

@SpringBootApplication
@RestController
public class DemoSpringApplication {

	@GetMapping(path = "/hello")
	public String hello() {
		return "Hello World";
	}

	public static void main(String[] args) {
		SpringApplication.run(DemoSpringApplication.class, args);
	}

}
