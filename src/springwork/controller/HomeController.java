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
		
	//NAVBAR - PRIVACY POLICY BUTTON
			@RequestMapping("/privacy")
			public ModelAndView privacy() {
				ModelAndView mav = new ModelAndView("privacy");
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
	
//------------SEARCH PAGE--------------//	

	//SEARCH PAGE
		@RequestMapping("/search")
		public ModelAndView search() {
			ModelAndView mav = new ModelAndView("search");
			return mav;
		}	
		
//------------NEW DECISION PAGE--------------//	

//NEW DECISION PAGE
	@RequestMapping("/newDecision")
	public ModelAndView newDecision() {
		ModelAndView mav = new ModelAndView("newDecision");
		return mav;
	}	

//------------TEST PAGE------------------------------------------------------------------------//	

// HOMETEST PAGE
	@RequestMapping("/homeTest")
	public ModelAndView homeTest() {
		ModelAndView mav = new ModelAndView("homeTest");
		return mav;
	}	

//USERTEST PAGE
	@RequestMapping("/userTest")
	public ModelAndView userTest() {
		ModelAndView mav = new ModelAndView("userTest");
		return mav;
	}	
	
//FOOTER - CONTACT US TEST BUTTON
	@RequestMapping("/contactTest")
	public ModelAndView contactTest() {
		ModelAndView mav = new ModelAndView("contactTest");
		return mav;
	}
//MENU TEST BUTTON
	@RequestMapping("/menuTest")
	public ModelAndView menuTest() {
		ModelAndView mav = new ModelAndView("menuTest");
		return mav;
	}		
		
//SEARCH TEST PAGE
	@RequestMapping("/searchTest")
	public ModelAndView searchTest() {
		ModelAndView mav = new ModelAndView("searchTest");
		return mav;
	}
		
//NAVBAR - REGISTERLOGIN TEST BUTTON
	@RequestMapping("/registerLoginTest")
	public ModelAndView registerLoginTest() {
		ModelAndView mav = new ModelAndView("registerLoginTest");
		return mav;
	}

//FORGOT PASSWORD TEST LINK
@RequestMapping("/forgotPasswordTest")
public ModelAndView forgotPasswordTest() {
	ModelAndView mav = new ModelAndView("forgotPasswordTest");
	return mav;
}	

//NEW DECISION TESTt PAGE
	@RequestMapping("/newDecisionTest")
	public ModelAndView newDecisionTest() {
		ModelAndView mav = new ModelAndView("newDecisionTest");
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
