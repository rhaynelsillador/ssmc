package net.ssmc.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import net.ssmc.enums.Access;
import net.ssmc.enums.Module;
import net.ssmc.interceptor.AppicationAudit;
import net.ssmc.model.ExamResult;
import net.ssmc.services.ExamResultServices;

@RestController
public class ExamResultRestController {

	@Autowired
	private ExamResultServices examResultServices;
	
	@AppicationAudit(module = Module.EXAMINATIONRESULT, access = Access.RETRIEVE)
	@RequestMapping(path="/ExaminationResults/{id}", method = {RequestMethod.GET, RequestMethod.POST}, produces={"application/json"})
	public Map<String, List<ExamResult>> examinationResults(ModelMap map, @PathVariable long id) {
		return examResultServices.getAccountExamResult(id);
	}
	
}
