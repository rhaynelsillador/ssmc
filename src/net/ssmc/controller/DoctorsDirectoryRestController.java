package net.ssmc.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.node.ObjectNode;

import net.cms.ssmc.model.Directory;
import net.cms.ssmc.model.Doctor;
import net.cms.ssmc.services.DoctorsDirectoryServices;
import net.ssmc.enums.TransactionType;

@RestController
public class DoctorsDirectoryRestController {

	@Autowired
	private DoctorsDirectoryServices doctorsDirectoryServices;
	
	@RequestMapping(path="/DirectoryList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> directoryList(@RequestParam Map<String, String> request){
		return doctorsDirectoryServices.findAllDirectories(request);
	}
	
	@RequestMapping(path="/DoctorList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> doctorList(@RequestParam Map<String, String> request){
		return doctorsDirectoryServices.findAllDoctors(request);
	}
	
	@RequestMapping(path="/DeleteDoctor", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode deleteDoctor(@RequestBody Doctor doctor){
		return doctorsDirectoryServices.deleteDoctorDirectory(doctor.getId(), 2);
	}
	
	@RequestMapping(path="/DeleteDirectory", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode deleteDirectory(@RequestBody Directory directory){
		return doctorsDirectoryServices.deleteDoctorDirectory(directory.getId(), 1);
	}
	
	@RequestMapping(path="/AddDirectory", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode addDirectory(@RequestBody Directory directory){
		return doctorsDirectoryServices.createUpdateDirectory(directory, TransactionType.ADD);
	}
	
	@RequestMapping(path="/AddDoctor", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode addDoctor(@RequestBody Doctor doctor){
		return doctorsDirectoryServices.createDoctor(doctor, TransactionType.ADD);
	}
	
	@RequestMapping(path="/UpdateDirectory", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode updateDirectory(@RequestBody Directory directory){
		return doctorsDirectoryServices.createUpdateDirectory(directory, TransactionType.UPDATE);
	}
	
	@RequestMapping(path="/UpdateDoctor", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode updateDoctor(@RequestBody Doctor doctor){
		return doctorsDirectoryServices.createDoctor(doctor, TransactionType.UPDATE);
	}
	
	@RequestMapping(path="/GetDoctor", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Doctor getDoctor(@RequestBody Doctor doctor){
		return doctorsDirectoryServices.getDoctor(doctor.getId());
	}
	
	@RequestMapping(path="/GetDirectory", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Directory getDirectory(@RequestBody Directory directory){
		return doctorsDirectoryServices.getDirectory(directory.getId());
	}
}
