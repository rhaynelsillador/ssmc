package net.ssmc.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WebhookController {

	@Autowired
	private HttpServletRequest httpServletRequest;
	@RequestMapping(path={"/Delivered"}, method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public String dashboard(){
		Enumeration<String> enumeration = httpServletRequest.getParameterNames();
		while (enumeration.hasMoreElements()) {
//	         System.out.println(enumeration.nextElement() + " :: "); 
			String params = enumeration.nextElement();
	         String[] paramValues = httpServletRequest.getParameterValues(params);
	         for (int i = 0; i < paramValues.length; i++) {
	             String paramValue = paramValues[i];
	             System.out.println(params + " :: " + paramValue);
	         }
	      }
		
		

		
		System.out.println("OBJECT " +  httpServletRequest.getParameterNames());
		return "{\"message\" : \"ok\"}";
	}
	
}
