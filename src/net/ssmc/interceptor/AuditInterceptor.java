package net.ssmc.interceptor;

import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import net.ssmc.enums.Access;
import net.ssmc.enums.Module;
import net.ssmc.model.Role;
import net.ssmc.model.User;


public class AuditInterceptor implements HandlerInterceptor { 
	
	@SuppressWarnings("unchecked")
	@Override 
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		try{
			HandlerMethod hm=(HandlerMethod)handler; 
			Method method=hm.getMethod();
			if(method.getDeclaringClass().isAnnotationPresent(Controller.class) && method.isAnnotationPresent(AppicationAudit.class)){
				final Module module = method.getAnnotation(AppicationAudit.class).module();
				final Access access = method.getAnnotation(AppicationAudit.class).access();
				User user = (User) session.getAttribute("user");
				
				
				if (user != null && module != Module.ALL) {
					System.out.println(module+"::"+access);
					
					boolean isAllowed = false;
					List<Role> roleAccess = (List<Role>) session.getAttribute("roleAccess");
					System.out.println("INTERCEP : "+roleAccess);
					
					if(roleAccess != null){
						for (Role role : roleAccess) {
							if(role.getModule() == module && role.getAccess() == access || module == Module.ALL){
								isAllowed = true;
								System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
								System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
								System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
								System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
							}
						}
					}
					if(!isAllowed && !user.getRoleName().equalsIgnoreCase("ADMIN")){
						response.sendRedirect("403");
					}
				}else if(user != null && user.getRoleName().equalsIgnoreCase("ADMIN")){
					return true;
		        }else if(module != Module.ALL){
		        	response.sendRedirect("AccountAuthenticationForm");
		        }	
			}
		}catch (Exception e) {
		}
		
		return true; 
	} 
	
	@Override 
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		
	} 
	
	@Override 
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception { 
//		System.out.println("After completion handle"); HandlerMethod hm=(HandlerMethod)handler; 
//		Method method=hm.getMethod(); if(method.isAnnotationPresent(AppicationAudit.class)){
//			System.out.println(method.getAnnotation(AppicationAudit.class).value()); 
//			System.out.println("Total Took:"+((Long)request.getAttribute("ENDTIME")-(Long)request.getAttribute("STARTTIME")));  
//		}  
		System.out.println(request.getSession().getAttribute("roleAccessJson"));
		request.setAttribute("roleAccessJson", request.getSession().getAttribute("roleAccessJson"));
	 } 
}