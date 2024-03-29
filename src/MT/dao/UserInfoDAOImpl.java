package MT.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import MT.entity.UserInfo;

@Transactional
@Repository //must be applied to all DAOimpli
public class UserInfoDAOImpl implements UserInfoDAO {

	//need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<UserInfo> getUser() {
		
		//GET THE CURRENT HIBERNATE SESSION
		Session currentSession = sessionFactory.getCurrentSession();
		
		//QUERY OF TYPE<> //QUERY NAME//                      //SQL QUERY//       //ENTITY//
		Query<UserInfo> theQuery = currentSession.createQuery("From UserInfo", UserInfo.class);
		
		//EXCECUTE QUERY AND GET RESULT LIST, PUT IT IN A LIST
		List<UserInfo> user = theQuery.getResultList();
		
		//RETURN LIST
		return user;
	}
	
	@Override
	public void saveUserInfo(UserInfo theUser) {
		
		//GET THE CURRENT HIBERNATE SESSION
		Session currentSession = sessionFactory.getCurrentSession();
		
		//SAVE THE USER SESSION
		currentSession.save(theUser);
	}
}


	
