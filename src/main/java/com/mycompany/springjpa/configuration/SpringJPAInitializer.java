package com.mycompany.springjpa.configuration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
// auto einai to antistoixo dispatcher-servlet.xml

public class SpringJPAInitializer implements WebApplicationInitializer {
        // p container servlet einai o servlet o opoiow perikliei tin efarmogi mas ston server
        // o idios o server diladi einai mia java web efarmogi,o opoios otan tou kanoume deploy tin efarmogi mas,
        // anathetei enan servlet panw apo tin efarmogi mas
	public void onStartup(ServletContext container) throws ServletException {

		AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
		ctx.register(SpringJPAConfiguration.class);
		ctx.setServletContext(container);
                
                // dimiourgia tou dispatcher servlet (DYNAMIKA MESW KWDIKA)
                // ena request diladi ftanei prwta ston container servlet kai autos ta prowthei ston dispatcher mas
                // eksou kai to setLoadonStarup(2) pou vlepame sto web.xml
		ServletRegistration.Dynamic servlet = container.addServlet(
				"dispatcher", new DispatcherServlet(ctx));
                //edw omws parakamptoume to parapanw vima kai o dispatcher mas vgainei panw apo ton container
                // vlepe sxima stis simeiwseis 3/7/2019
		servlet.setLoadOnStartup(1);
		servlet.addMapping("/");
	}

}
