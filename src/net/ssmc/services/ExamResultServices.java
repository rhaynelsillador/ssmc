package net.ssmc.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import net.ssmc.dao.ExamResultDao;
import net.ssmc.model.ExamResult;

public class ExamResultServices {

	@Autowired
	private ExamResultDao examResultDao;
	public Map<String, List<ExamResult>> getAccountExamResult(long id){
		Map<String , List<ExamResult>> data = new HashMap<>();
		data.put("data", examResultDao.findByAccount(id));
		return data;
	}
	
}
