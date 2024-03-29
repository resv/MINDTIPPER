package MT.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MT.entity.DecisionInfo;

@Repository// MUST BE APPLIED TO ALL DAOIMPL
public class DecisionInfoImpl implements DecisionInfoDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
		
	@Override
	public List<DecisionInfo> getDecisions() {
		
		//GET THE CURRENT HIBERNATE SESSION
		Session currentSession = sessionFactory.getCurrentSession();
		
		//QUERY OF TYPE<> //QUERY NAME//                         //SQL QUERY//       //ENTITY//
		Query<DecisionInfo> theQuery = currentSession.createQuery("From DecisionInfo", DecisionInfo.class);
		
		//EXCECUTE QUERY AND GET RESULT LIST, PUT IT IN A LIST
		List<DecisionInfo> decisions = theQuery.getResultList();
		
		//RETURN LIST
		return decisions;
	}

}
