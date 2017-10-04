package net.cms.ssmc.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import net.cms.ssmc.dao.FaqTempDao;
import net.cms.ssmc.model.Faq;
import net.cms.ssmc.model.FaqTemp;
import net.ssmc.enums.Module;
import net.ssmc.enums.Status;
import net.ssmc.enums.TransactionType;
import net.ssmc.model.Helper;
import net.ssmc.model.User;

public class FaqTempServices {

	@Autowired
	private FaqTempDao faqTempDao;
	
	public Map<String, Object> retrieveAllFaqTemp(HttpSession session, Map<String, String> request){
		Map<String, Object> data = new HashMap<>();
		List<FaqTemp> faqList = faqTempDao.findAll(request);
		data.put("rows", faqList);
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", faqTempDao.count());
		return data;
	}
	
	public FaqTemp getFaqTemp(HttpServletRequest httpServletRequest, int id){
		try {
			return faqTempDao.findOne(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Map<String, Object> createUpdateFaq(HttpSession session, FaqTemp faq){
		User user = (User) session.getAttribute("user");
		TransactionType transactionType = (TransactionType) session.getAttribute("TRANSACTION");
		Map<String, Object> response = new HashMap<>();
		response.put(Helper.STATUS, Status.ERROR);
		
		if(faq.getTitle() == null || faq.getTitle().isEmpty()){
			response.put(Helper.MESSAGE, "Faq title is required!");
			return response;
		}else if(faq.getQuestion() == null || faq.getQuestion().isEmpty()){
			response.put(Helper.MESSAGE, "Faq question is required!");
			return response;
		}else if(faq.getAnswer() == null || faq.getAnswer().isEmpty()){
			response.put(Helper.MESSAGE, "Faq answer is required!");
			return response;
		}
		
		if(transactionType == TransactionType.UPDATE){
			faq.setId(Integer.parseInt(session.getAttribute("FAQID").toString()));
			try {
				System.out.println("FAQ FAQ :: " + session.getAttribute("faq"));
				if(session.getAttribute("faq").toString().equalsIgnoreCase("main")){
					System.out.println(session.getAttribute("FAQID"));
					long faqOld = Long.parseLong(session.getAttribute("FAQID").toString());
					FaqTemp temp = null;
					try {
						temp = faqTempDao.findOneByMain(faqOld);
					} catch (Exception e) {
					}
					
					if(temp!=null){
						faqTempDao.update(faq);
					}else{
						faqTempDao.create(faq, faqOld, user.getId());
					}
						
				}else if(session.getAttribute("faq").toString().equalsIgnoreCase("temp")){
					faqTempDao.update(faq);
				}
				
				
				response.put(Helper.STATUS, Status.SUCCESS);
				response.put(Helper.MESSAGE, "Faq successfully updated!");
			} catch (Exception e) {
				e.printStackTrace();
				response.put(Helper.STATUS, Status.ERROR);
				response.put(Helper.MESSAGE, "Faq unsuccessfully updated!");
			}
		}else if(transactionType == TransactionType.ADD){
			try {
				long id = faqTempDao.create(faq, 0, user.getId());
				response.put(Helper.STATUS, Status.SUCCESS);
				response.put(Helper.MESSAGE, "Faq successfully added!");
			} catch (Exception e) {
				e.printStackTrace();
				response.put(Helper.STATUS, Status.ERROR);
				response.put(Helper.MESSAGE, "Faq unsuccessfully updated!");
			}
		}
		
		return response;
	}
}
