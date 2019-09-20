package com.laptrinhjavaweb.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

//referral web:  https://dzone.com/articles/understanding-spring-web
// AbstractDispatcherServletInitializer It extends previous class and adds two abstract methods: createServletApplicationContext() and getServletMappings().
//First method returnsWebApplicationContext that will be passed to DispatcherServlet
//which will be automatically added into container ServletContext
//Please notice that this context will be established as a child of the context returned by createRootApplicationContext() method
//Second method - as you have probably already deduced - returns mappings that are used during servlet registration. You can also override getServletFilters() method if you need any custom filters, because default implementation returns just empty array.


public class SpringMvcDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		//
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses(){
		return new Class[] {AppConfig.class};
	}
	
	@Override
	protected String[] getServletMappings() {
		 return new String[] {
			"/"	 
		 };
	}

}
