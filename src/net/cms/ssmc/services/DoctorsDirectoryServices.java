package net.cms.ssmc.services;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import net.cms.ssmc.dao.DirectoryDao;
import net.cms.ssmc.dao.DoctorDao;
import net.cms.ssmc.model.Directory;
import net.cms.ssmc.model.Doctor;
import net.ssmc.enums.Status;
import net.ssmc.enums.TransactionType;
import net.ssmc.model.Helper;

public class DoctorsDirectoryServices {

	@Autowired
	private DirectoryDao directoryDao;
	@Autowired
	private DoctorDao doctorDao;
	@Autowired
	private ObjectMapper objectMapper;
	
	public Map<String, Object> findAllDirectories(Map<String, String> request){
		Map<String, Object> data = new HashMap<>();
		data.put("rows", directoryDao.findAll(request));
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", directoryDao.count(request));
		return data;
	}
	
	public Map<String, Object> findAllDoctors(Map<String, String> request){
		Map<String, Object> data = new HashMap<>();
		data.put("rows", doctorDao.findAll(request));
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", doctorDao.count(request));
		return data;
	}
	
	public ObjectNode createUpdateDirectory(Directory directory, TransactionType transactionType){
		ObjectNode node = objectMapper.createObjectNode();
		node.put(Helper.STATUS, Status.ERROR.toString());
		if(directory.getName().isEmpty()){
			node.put(Helper.MESSAGE, "Directory name is required!");
		}else{
			switch (transactionType) {
			case ADD:
				directoryDao.create(directory);
				node.put(Helper.STATUS, Status.SUCCESS.toString());
				node.put(Helper.MESSAGE, "Directory information successfully added!");
				break;
			case UPDATE :
				directoryDao.update(directory);
				node.put(Helper.STATUS, Status.SUCCESS.toString());
				node.put(Helper.MESSAGE, "Directory information successfully updated!");
				break;
			default:
				break;
			}
		}
		return node;
	}
	
	public ObjectNode createDoctor(Doctor doctor, TransactionType transactionType){
		ObjectNode node = objectMapper.createObjectNode();
		node.put(Helper.STATUS, Status.ERROR.toString());
		if(doctor.getName().isEmpty()){
			node.put(Helper.MESSAGE, "Doctor name is required!");
		}else if(doctor.getBranch().isEmpty()){
			node.put(Helper.MESSAGE, "Doctor branch is required!");
		}else{
			switch (transactionType) {
			case ADD:
				doctorDao.create(doctor);
				node.put(Helper.STATUS, Status.SUCCESS.toString());
				node.put(Helper.MESSAGE, "Doctor information successfully added!");
				break;
			case UPDATE :
				doctorDao.update(doctor);
				node.put(Helper.STATUS, Status.SUCCESS.toString());
				node.put(Helper.MESSAGE, "Doctor information successfully updated!");
				break;
			default:
				break;
			}
		}
		return node;
	}
	
	public ObjectNode deleteDoctorDirectory(long id, int type){
		ObjectNode node = objectMapper.createObjectNode();
		node.put(Helper.STATUS, Status.SUCCESS.toString());
		if(type == 1){
			directoryDao.delete(id);
			node.put(Helper.MESSAGE, "Directory successfully deleted!");
		}else{
			doctorDao.delete(id);
			node.put(Helper.MESSAGE, "Doctor successfully deleted!");
		}
		return node;
	}
	
	public Directory getDirectory(long id){
		return directoryDao.findOne(id);
	}
	
	public Doctor getDoctor(long id){
		return doctorDao.findOne(id);
	}
}
