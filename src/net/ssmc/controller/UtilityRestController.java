package net.ssmc.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import net.cms.ssmc.db.utils.DBUpdates;
import net.ssmc.model.Email;
import net.ssmc.utils.FileUploadUtility;
import net.ssmc.utils.GmailUtility;

@RestController
public class UtilityRestController {

	@Autowired
	private HttpServletRequest httpServletRequest;
	@Autowired
	private FileUploadUtility fileUploadUtility;
	@Autowired
	private GmailUtility gmailUtility;
	@Autowired
	private DBUpdates DBUpdates;
	
	@RequestMapping(path="/ckEditorUpload", method = {RequestMethod.POST, RequestMethod.GET}, produces="application/json")
	public @ResponseBody Map<String, Object> uploadFile(@RequestParam("upload") MultipartFile multipartFiles) {
		System.out.println(multipartFiles);
		return fileUploadUtility.fileUpload(multipartFiles);
	}
	
	@RequestMapping(path="/fileInputUpload", method = {RequestMethod.POST, RequestMethod.GET}, produces="application/json")
	public @ResponseBody Map<String, Object> fileInputUploads(@RequestParam("file_data") MultipartFile multipartFiles) {
		System.out.println(multipartFiles);
		return fileUploadUtility.fileUpload(multipartFiles);
	}
	
	@RequestMapping(path="/FormUploadFile", method = {RequestMethod.POST, RequestMethod.GET}, produces="application/json")
	public @ResponseBody List<String> formUploadFile(@RequestParam("fileToUpload[]") MultipartFile[] multipartFiles) {
		return fileUploadUtility.fileUploads(httpServletRequest, multipartFiles);
	}
	
//	@RequestMapping(path="/ckEditorUpload", method = {RequestMethod.POST, RequestMethod.GET}, produces="application/json")
//	public @ResponseBody Map<String, Object> uploadFile(@RequestParam MultipartFile multipartFiles) {
//		System.out.println(multipartFiles);
//		return fileUploadUtility.fileUpload(multipartFiles);
//	}
	
	@RequestMapping(path="/sendEmail", method = {RequestMethod.POST, RequestMethod.GET}, produces="application/json")
	public @ResponseBody Map<String, Object> sendEmail(@RequestBody Email email) {
		return gmailUtility.sendEmail(email.getTo(), email.getSubject(), email.getContent());
	}
	
	@RequestMapping(path="/DBUpdates", method = {RequestMethod.POST, RequestMethod.GET}, produces="application/json")
	public @ResponseBody String dBUpdates() {
		DBUpdates.createRegisteredAccountTable();
		return "{\"status\":\"OK\"}";
	}
	
	
	
}
