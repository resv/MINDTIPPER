package MT.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MT.entity.Choice;

@Repository // must be applied to all DAOImpl
public class ChoiceDAOImpl implements ChoiceDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Choice> getChoice() {
		
		//GET THE CURRENT HIBERNATE SESSION
		Session currentSession = sessionFactory.getCurrentSession();
		
		//QUERY OF TYPE<> //QUERY NAME//                   //SQL QUERY//    //ENTITY//
		Query<Choice> theQuery = currentSession.createQuery("From Choice", Choice.class);
		
		//EXCECUTE QUERY AND GET RESULT LIST, PUT IT IN A LIST
		List<Choice> choices = theQuery.getResultList();
		
		//RETURN LIST
		return choices;
	}

}
