package MT.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import MT.entity.UserInfo;
import MT.service.UserInfoService;

@Controller
public class HomeController {

	
	//INJECT UserInfo Service
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
	
	
}
