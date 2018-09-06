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
	
	@RequestMapping("/")
	public ModelAndView welcome() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	@RequestMapping("/displayroute")
	public ModelAndView userPage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("UserPage");
		HttpSession se = request.getSession();
		se.setAttribute("u", request.getParameter("name"));
		mav.addObject("user_name", request.getParameter("name"));
		return mav;
	}
}
