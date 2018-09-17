package MT.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import MT.dao.DecisionInfoDAO;
import MT.entity.DecisionInfo;

@Service
public class DecisionsInfoImpl implements DecisionInfoService {

	//INJECT DecisionInfoDAO
	@Autowired
	private DecisionInfoDAO decisioninfoDAO;
	
	@Override
	@Transactional
	public List<DecisionInfo> getDecisions() {
		return decisioninfoDAO.getDecisions();
		
	}

}
