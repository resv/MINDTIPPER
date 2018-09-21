package MT.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import MT.dao.ChoiceDAO;
import MT.entity.Choice;

@Service
public class ChoiceServiceImpl implements ChoiceService {

		@Autowired
		private ChoiceDAO choiceDAO;
		
		@Override
		@Transactional
		public List<Choice> getChoice() {
			return choiceDAO.getChoice();
			
	}
}
