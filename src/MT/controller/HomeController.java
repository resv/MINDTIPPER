package MT.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import MT.dao.UserInfoDAO;
import MT.entity.UserInfo;
import MT.service.UserInfoService;

@Controller
public class HomeController {

	
	//inject UserInfo service
	@Autowired
	private UserInfoService userinfoservice;
	
	@GetMapping("/user")
	public String returnUser(Model theModel) {
		
		//get users from service
		List<UserInfo> theUser = userinfoservice.getUser();
		
		//add users to the model
		theModel.addAttribute("user", theUser);
		
		return "user";
	}
	
	
	
	
}
