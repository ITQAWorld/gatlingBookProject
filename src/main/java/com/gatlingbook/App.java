package com.gatlingbook;

import com.gatlingbook.config.FrontendRouteDriver;
import com.gatlingbook.service.ApplyForJobService;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan({ "com.gatlingbook" })
public class App {
	public static void main(String[] args) {
    	AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(App.class);
    	new FrontendRouteDriver(ctx.getBean(ApplyForJobService.class));
        ctx.registerShutdownHook();
    }
    
    
}
