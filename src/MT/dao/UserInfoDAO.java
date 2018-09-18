package MT.dao;

import java.util.List;

import MT.entity.UserInfo;

public interface UserInfoDAO {

	public List<UserInfo> getUser();

	public void saveUserInfo(UserInfo theUser);
	
	

	
}
