package MT.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import MT.dao.UserInfoDAO;
import MT.entity.UserInfo;

@Service
public class UserInfoServiceImpl implements UserInfoService {

	
	//need to inject UserInfoDAO
	@Autowired
	private UserInfoDAO userinfoDAO;
	
	@Override
	@Transactional
	public List<UserInfo> getUser() {
		return userinfoDAO.getUser();
	}

	@Override
	@Transactional
	public void saveUserInfo(UserInfo theUser) {
		userinfoDAO.saveUserInfo(theUser);
		
	}

}
