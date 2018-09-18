package MT.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import MT.dao.TitleDAO;
import MT.entity.Title;

public class TitleServiceImpl implements TitleService {

	
	@Autowired
	private TitleDAO titleDAO;
	
	@Override
	@Transactional
	public List<Title> getTitles() {
		return titleDAO.getTitles();
	}

}
