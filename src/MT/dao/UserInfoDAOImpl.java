package MT.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import MT.entity.UserInfo;


@Repository//must be applied to all DAOimpli
public class UserInfoDAOImpl implements UserInfoDAO {

	//need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public List<UserInfo> getUser() {
		
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		//create query
		Query<UserInfo> theQuery = currentSession.createQuery("From UserInfo", UserInfo.class);
		
		//execute query and get result list
		List<UserInfo> user = theQuery.getResultList();
		
		//return the results//
		return user;
		
	}

}
