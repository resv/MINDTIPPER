package MT.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import MT.dao.UserInfoDAO;
import MT.entity.UserInfo;

@Controller
public class HomeController {

	
	
	@Autowired
	private UserInfoDAO userinfoDAO;
	
	@RequestMapping("/user")
	public String returnUser(Model theModel) {
		
		//get users from dao
		List<UserInfo> theUser = userinfoDAO.getUser();
		
		//add users to the model
		theModel.addAttribute("user", theUser);
		
		return "user";
	}
	
	
	
	
}
