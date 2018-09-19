package MT.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import MT.entity.DecisionInfo;
import MT.entity.UserInfo;
import MT.service.DecisionInfoService;
import MT.service.UserInfoService;

@Controller
public class HomeController {

	
	//READS USER_INFO FROM DB TO USER PAGE(TESTING PURPOSES)
	@Autowired
	private UserInfoService userinfoservice;
	
	@GetMapping("/user")
	public String returnUser(Model theModel) {
		
		//GET USERS FROM SERVICE
		List<UserInfo> theUser = userinfoservice.getUser();
		
		//ADD USERS TO MODEL
		theModel.addAttribute("user", theUser);
		
		return "user";
	}
	
	
	
	//READS DECISIONINFO FROM DB TO SEARCH PAGE
	@Autowired
	private DecisionInfoService decisioninfoservice;
	
	@GetMapping("/search")
	public String returnDecisions(Model theModel) {
		
		//GET DECISIONS FROM SERVICE
		List<DecisionInfo> theDecisions = decisioninfoservice.getDecisions();
		
		//ADD DECISIONS TO MODEL
		theModel.addAttribute("decisions", theDecisions);
		
		
		return "search";
	}
	
	
	//CARRIES USER SESSION TO REG PAGE
	@GetMapping("/registerLogin")
	public String registerLogin(Model theModel) {
		UserInfo theUser = new UserInfo();
		
		theModel.addAttribute("user", theUser);
		
		return "registerLogin";
	}
	
	//WRITES DATA FROM REG PAGE TO DB
	@PostMapping("/registerUser")
	public String registerUser(@ModelAttribute("user") UserInfo theUser) {
		
		userinfoservice.saveUserInfo(theUser);
		
		return "menu";
	}
	
	
	
	
	
	
	
//	//READS TITLE FROM DB TO SEARCH PAGE
//	@Autowired
//	private TitleService titleservice;
//	
//	@GetMapping("/search")
//	public String returnTitles(Model theModel) {
//		
//		List<Title> theTitles = titleservice.getTitles();
//		
//		theModel.addAttribute("titles", theTitles);
//		
//		return "search";
//	}
	
	
//	//READS CHOICE FROM DB TO SEARCH PAGE
//	@Autowired
//	private ChoiceService choiceservice;
//	
//	@GetMapping("/search")
//	public String returnChoices(Model theModel) {
//		
//		List<Choice> theChoices = choiceservice.getChoice();
//		
//		theModel.addAttribute("choices", theChoices);
//		
//		return "search";
//	}
	
	

	
	
	
//---------------------------------------LINKS AND REDIRECTS---------------------------------//
	
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
			
			
//////------------USER PAGE--------------//	
//
//	//USER PAGE REDIRECT
//	@RequestMapping("/user")
//	public ModelAndView user() {
//		ModelAndView mav = new ModelAndView("user");
//		return mav;
//	}				
			
//------------NEW DECISION PAGE--------------//	

	//NEW DECISION PAGE
	@RequestMapping("/newDecision")
	public ModelAndView newDecision() {
		ModelAndView mav = new ModelAndView("newDecision");
		return mav;
	}	

		
//------------SEARCH PAGE--------------//	

	//SEARCH PAGE
	@RequestMapping("/search")
	public ModelAndView search() {
		ModelAndView mav = new ModelAndView("search");
		return mav;
	}	
	
		

		
//------------TEMPLATE DECISION--------------//	

	//TEMPLATE DECISION PAGE
	@RequestMapping("/templateDecision")
	public ModelAndView templateDecision() {
		ModelAndView mav = new ModelAndView("templateDecision");
		return mav;
	}	

	
	
	
	
	
	
	
	
	
	
}
