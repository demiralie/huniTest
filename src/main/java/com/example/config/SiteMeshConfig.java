package com.example.config;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SiteMeshConfig {
	// SiteMesh
	@Bean
	FilterRegistrationBean<ConfigurableSiteMeshFilter> siteMeshFilter() {
		FilterRegistrationBean<ConfigurableSiteMeshFilter> filter = new FilterRegistrationBean<>();

		filter.setFilter(new ConfigurableSiteMeshFilter() {
			
			@Override
			protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
				builder.addDecoratorPath("/main/*", "/WEB-INF/decorators/side.jsp");
				builder.addDecoratorPath("/board/*", "/WEB-INF/decorators/side.jsp");
				builder.addDecoratorPath("/dept/*", "/WEB-INF/decorators/side.jsp");
				builder.addDecoratorPath("/emp/*", "/WEB-INF/decorators/side.jsp");
				builder.addDecoratorPath("/city/*", "/WEB-INF/decorators/side.jsp");
				builder.addDecoratorPath("/country/*", "/WEB-INF/decorators/side.jsp");
				builder.addDecoratorPath("/ontime/*", "/WEB-INF/decorators/side.jsp");
				builder.addDecoratorPath("/carrier/*", "/WEB-INF/decorators/side.jsp");
				builder.addDecoratorPath("/country/*", "/WEB-INF/decorators/side.jsp");
				builder.addDecoratorPath("/airport/*", "/WEB-INF/decorators/side.jsp");
				builder.addDecoratorPath("/bootstrap/*", "/WEB-INF/decorators/bootstrap.jsp");
			}
		});

		filter.setUrlPatterns(Arrays.asList("/main/*","/board/*", "/dept/*", "/emp/*", "/city/*", "/country/*", "/ontime/*", "/bootstrap/*","/carrier/*", "/country/*" ,"/airport/*"));
		
		return filter;
	}

	@Bean
	FilterRegistrationBean<Filter> testFilter() {
		FilterRegistrationBean<Filter> filter = new FilterRegistrationBean<>();

		filter.setFilter(new Filter() {

			@Override
			public void init(FilterConfig filterConfig) throws ServletException {
				System.out.println("############################");
				System.out.println("### My Filter init() ###");
				System.out.println("############################");
			}

			@Override
			public void doFilter(ServletRequest request, ServletResponse response, FilterChain chian)
					throws IOException, ServletException {
				System.out.println("#########################################");
				System.out.println("### My Filter doFilter() start... ###");
				System.out.println("#########################################");

				chian.doFilter(request, response);

				System.out.println("#######################################");
				System.out.println("### My Filter doFilter() end... ###");
				System.out.println("#######################################");
			}

			@Override
			public void destroy() {
				System.out.println("###############################");
				System.out.println("### My Filter dostory() ###");
				System.out.println("###############################");
			}
		});
		filter.setUrlPatterns(Arrays.asList("/dept/*", "/emp/*"));

		return filter;
	}
}
