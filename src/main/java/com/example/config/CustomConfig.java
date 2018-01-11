package com.example.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;



@Configuration
public class CustomConfig implements CommandLineRunner {

	@Bean
	InternalResourceViewResolver jspView() {
		InternalResourceViewResolver vr = new InternalResourceViewResolver();
		vr.setPrefix("/WEB-INF/");
		vr.setSuffix(".jsp");
		vr.setViewNames("jsp/*");
		vr.setViewClass(JstlView.class);

		return vr;
	}
	
	@Value("${spring.profiles.active}")
	String profile;
	
	@Value("${spring.datasource.driver-class-name}")
	String cls;
	@Value("${spring.datasource.url}")
	String url;
	@Value("${spring.datasource.username}")
	String username;
	
	@Override
	public void run(String... arg0) throws Exception {
		System.out.println("###");
		System.out.println("### Profile = " + profile);
		System.out.println("### cls = " + cls);
		System.out.println("### url = " + url);
		System.out.println("### username = " + username);
		System.out.println("###");
	}

}
