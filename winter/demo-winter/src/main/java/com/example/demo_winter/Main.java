package com.example.demo_winter;

import io.winterframework.core.annotation.Bean;
import io.winterframework.core.v1.Application;
import io.winterframework.mod.web.annotation.WebController;
import io.winterframework.mod.web.annotation.WebRoute;

@Bean
@WebController
public class Main {
	
	@WebRoute( path = "/hello" )
    public String hello() {
        return "Hello World";
    }
    
    public static void main(String[] args) {
        Application.run(new Demo_winter.Builder());
    }
}
