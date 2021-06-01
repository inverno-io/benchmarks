package com.example.demo_inverno;

import io.inverno.core.annotation.Bean;
import io.inverno.core.v1.Application;
import io.inverno.mod.web.annotation.WebController;
import io.inverno.mod.web.annotation.WebRoute;

@Bean
@WebController
public class Main {
	
	@WebRoute( path = "/hello" )
    public String hello() {
        return "Hello World";
    }
    
    public static void main(String[] args) {
        Application.run(new Demo_inverno.Builder());
    }
}
