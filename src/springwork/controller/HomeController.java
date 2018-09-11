package springwork.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class HomeController {

	
//	@RequestMapping("/")
//	public ModelAndView welcome() {
//		ModelAndView mav = new ModelAndView("welcome");
//		return mav;
//	}
	
	
//------------NAVBAR CONTROLLERS---------------//	
	
	//NAVBAR & HOME PAGE - NAVBAR BRAND BUTTON	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	//NAVBAR - MENU BUTTON
	@RequestMapping("/menu")
	public ModelAndView menu() {
		ModelAndView mav = new ModelAndView("menu");
		return mav;
	}
	
	//NAVBAR - REGISTERLOGIN BUTTON
		@RequestMapping("/registerLogin")
		public ModelAndView registerLogin() {
			ModelAndView mav = new ModelAndView("registerLogin");
			return mav;
		}
		
//------------FOOTER CONTROLLERS--------------//		
	//FOOTER - CONTACT US BUTTON
			@RequestMapping("/contact")
			public ModelAndView contact() {
				ModelAndView mav = new ModelAndView("contact");
				return mav;
			}
		
		
		
		
//------------REGISTERLOGIN PAGE--------------//	
		
	//FORGOT PASSWORD LINK
		@RequestMapping("/forgotPassword")
		public ModelAndView forgotPassword() {
			ModelAndView mav = new ModelAndView("forgotPassword");
			return mav;
		}	
		
//------------USER PAGE--------------//	

	//USER PAGE
		@RequestMapping("/user")
		public ModelAndView user() {
			ModelAndView mav = new ModelAndView("user");
			return mav;
		}			
	
	//SAMPLE OF A THE EXAMPLE WE DID IN CLASS
	@RequestMapping("/displayroute")
	public ModelAndView userPage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("UserPage");
		HttpSession se = request.getSession();
		se.setAttribute("u", request.getParameter("name"));
		mav.addObject("user_name", request.getParameter("name"));
		return mav;
	}
	
	
}
