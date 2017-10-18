package net.ssmc.services;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import net.ssmc.dao.ExamResultDao;
import net.ssmc.enums.ExaminStatus;
import net.ssmc.enums.Status;
import net.ssmc.model.ExamResult;
import net.ssmc.model.Helper;
import net.ssmc.model.User;
import net.ssmc.utils.FileUploadUtility;
import net.ssmc.utils.Properties;

public class ExamResultServices {

	@Autowired
	private ObjectMapper objectMapper;
	@Autowired
	private Properties properties;
	@Autowired
	private ExamResultDao examResultDao;
	@Autowired
	private HttpServletRequest httpServletRequest;
	
	public Map<String, List<ExamResult>> getAccountExamResult(long id){
		Map<String , List<ExamResult>> data = new HashMap<>();
		data.put("data", examResultDao.findByAccount(id));
		return data;
	}
	
	public ObjectNode deleteTestResult(long id){
		examResultDao.delete(id);
		ObjectNode node = objectMapper.createObjectNode();
		node.put(Helper.STATUS, Status.SUCCESS.toString());
		node.put(Helper.MESSAGE, "Test result successfully deleted!");
		return node;
	}
	
	public ObjectNode saveUploadTestResult(String name, String dateExamined, String description, long accountId, MultipartFile fileToUpload){
		ObjectNode node = objectMapper.createObjectNode();
		node.put(Helper.STATUS, Status.ERROR.toString());
		if(name.isEmpty()){
			node.put(Helper.MESSAGE, "Test result name is required!");
		}else if(dateExamined.isEmpty()){
			node.put(Helper.MESSAGE, "Test date examined is required!");
		}else if(description.isEmpty()){
			node.put(Helper.MESSAGE, "Test description is required!");
		}else if(fileToUpload.isEmpty()){
			node.put(Helper.MESSAGE, "Test result is required!");
		}else{
			String ext = FilenameUtils.getExtension(fileToUpload.getOriginalFilename());
			boolean isFileAllowed = false;
			for (int i = 0; i < properties.getAlloweds().length; i++) {
				System.out.println(ext + " :: " +properties.getAlloweds()[i]);
				if(ext.equalsIgnoreCase(properties.getAlloweds()[i])){
					isFileAllowed = true;
				}
			}
			if(!isFileAllowed){
				node.put(Helper.MESSAGE, "Test result file type is not allowed! Accept "+properties.getAllowed()+" file type/s.");
			}else{
				User user = (User) httpServletRequest.getSession().getAttribute("user");
				String fileName = properties.getResult()+FileUploadUtility.getSaltString()+"."+ext;
				ExamResult examResult = new ExamResult();
				examResult.setName(name);
				examResult.setDateExamined(Timestamp.valueOf(dateExamined));
				examResult.setResult(fileName);
				examResult.setDescription(description);
				examResult.setDateEncoded(new Timestamp(System.currentTimeMillis()));
				examResult.setEncodedBy(user.getId());
				examResult.setStatus(ExaminStatus.ACTIVE);
				examResult.setAccountId(accountId);
				System.out.println(examResult);
				examResultDao.create(examResult);
				
				node.put(Helper.STATUS, Status.SUCCESS.toString());
				node.put(Helper.MESSAGE, "Test result is successfully uploaded!");
				
				try {
					FileCopyUtils.copy(fileToUpload.getBytes(), new File(properties.getUploadDir()+"/"+fileName));
				} catch (IOException e) {
				}
			}
			
		}
		System.out.println(fileToUpload.isEmpty());
		
		return node;
		
	}
}
