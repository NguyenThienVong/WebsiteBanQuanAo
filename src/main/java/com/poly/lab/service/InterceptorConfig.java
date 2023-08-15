package com.poly.lab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;





@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	@Autowired
	SecurityInterceptor auth;
	@Autowired
	LoggerInterceptor loggerInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(loggerInterceptor).addPathPatterns("/*", "/**");
		
		registry.addInterceptor(auth)
		.addPathPatterns("/admin/**");
		
	}
	
	
}
