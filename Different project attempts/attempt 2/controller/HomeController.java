package MINDTIPPER.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import MINDTIPPER.DAO.DecisionInfoDAO;
import MINDTIPPER.IMPL.DecisionInfoDAOi;
import MINDTIPPER.MODEL.DecisionInfo;





@Controller
public class HomeController {


//	@RequestMapping("/")
//	public ModelAndView welcome() {
//		ModelAndView mav = new ModelAndView("welcome");
//		return mav;
//	}
	

////--------------GETUSERBYEMAIL---------------//	
//	@RequestMapping(value = "/user", method = RequestMethod.GET)
//	public ModelAndView user(HttpServletRequest request) {
//		String email = Integer.parseInt(request.getParameter("email"));
//	    model.addObject("contact", newContact);
//	    model.setViewName("ContactForm");
//	    return model;
//	}
	
//
//	@Autowired
//    private searchAllDecisions();;
// 
//	
//	@RequestMapping(value="/search")
//	public ModelAndView dList(ModelAndView model) throws IOException{
//	    List<DecisionInfo> dList = decisionInfoDAOi.list();
//	    model.addObject("dList", dList);
//	    model.setViewName("search");
//	 
//	    return model;
//	}
//	
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
			
	//FOOTER - ABOUT POLICY BUTTON
	@RequestMapping("/about")
	public ModelAndView about() {
		ModelAndView mav = new ModelAndView("about");
		return mav;
	}		
			
	//FOOTER - TERMS POLICY BUTTON
	@RequestMapping("/terms")
	public ModelAndView terms() {
		ModelAndView mav = new ModelAndView("terms");
		return mav;
	}
	
	//FOOTER - PRIVACY POLICY BUTTON
	@RequestMapping("/privacy")
	public ModelAndView privacy() {
		ModelAndView mav = new ModelAndView("privacy");
		return mav;
	}
		
		
		
		
//------------REGISTERLOGIN PAGE--------------//	
		
	//FORGOT PASSWORD LINK
		@RequestMapping("/forgotPassword")
		public ModelAndView forgotPassword() {
			ModelAndView mav = new ModelAndView("forgotPassword");
			return mav;
		}	
		
//	//LOGIN TO YOUR ACCOUNT FORM - BUTTON  JDBC TEMPLATE VERSION
//		@RequestMapping(value="userLogin", method = RequestMethod.POST)
//		public ModelAndView user_info(@RequestParam("logEmail") String email,
//									  @RequestParam("logPass") String password) {
//			ModelAndView mav = new ModelAndView("user");
//			mav.addObject("logEmail", email);
//			mav.addObject("logPass", password);
//			return mav;
//		}
//				
		
////------------USER PAGE--------------//	

	//USER PAGE REDIRECT
		@RequestMapping("/user")
		public ModelAndView user() {
			ModelAndView mav = new ModelAndView("user");
			return mav;
		}				
		
//------------NEW DECISION PAGE--------------//	

//NEW DECISION PAGE
	@RequestMapping("/newDecision")
	public ModelAndView newDecision() {
		ModelAndView mav = new ModelAndView("newDecision");
		return mav;
	}	

	
//------------SEARCH PAGE--------------//	

//	//SEARCH PAGE
	@RequestMapping("/search")
	public ModelAndView search() {
		ModelAndView mav = new ModelAndView("search");
		return mav;
	}	
	
	

	
//------------TEMPLATE DECISION--------------//	

//	//TEMPLATE DECISION PAGE
	@RequestMapping("/templateDecision")
	public ModelAndView templateDecision() {
		ModelAndView mav = new ModelAndView("templateDecision");
		return mav;
	}	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
	
	
//---------------------------------------------------------------------TEST PAGE (DISREGARD)------------------------------------------------------------------------//	

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
