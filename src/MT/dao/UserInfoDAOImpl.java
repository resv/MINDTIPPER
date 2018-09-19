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
		
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//QUERY INTERFACE OF TYPE<> name of QUERY,            SQL QUERY,       ENTITY
		Query<UserInfo> theQuery = currentSession.createQuery("From UserInfo", UserInfo.class);
		
		//execute query and get result list PUT IT IN A LIST VARIABLE
		List<UserInfo> user = theQuery.getResultList();
		
		//return the results, RETURN LIST
		return user;
		
	}
	
	@Override
	public void saveUserInfo(UserInfo theUser) {
		
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//save the user
		currentSession.save(theUser);
		
	}

	
}


	
