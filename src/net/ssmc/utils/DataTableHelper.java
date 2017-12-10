package net.ssmc.utils;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.google.gson.Gson;

import net.ssmc.enums.App;
import net.ssmc.enums.Page;
import net.ssmc.model.form.FilterForm;

public class DataTableHelper {
	

	@Autowired
	private Gson gson;

	public String sort(Map<String, String> request){
		for (String key : request.keySet()){
			if(key.contains("sort[")){
				return " ORDER BY "+key.substring(5, key.length()-1)+ " " + request.get(key);
			}
		}
		return "";
	}
	
	public String formFilter(Map<String, String> request){
		FilterForm form = gson.fromJson(request.get("form"), FilterForm.class);
		if(form != null){
			String builder = "";
			if(form.getType() != null && !form.getType().equals(App.ALL)){
				builder += " type = '"+form.getType()+"' AND ";
			}
			if(form.getPage() != null && !form.getPage().equals(Page.All)){
				builder += " page = '"+form.getPage()+"' AND ";
			}
			if(form.getName() != null && !form.getName().isEmpty()){
				builder += " name LIKE '%"+form.getName()+"%' AND ";
			}
			if(form.getFilter() != null && !form.getFilter().isEmpty()){
				builder += " (title LIKE '%"+form.getFilter()+"%' OR content LIKE '%"+form.getFilter()+"%' ) AND ";
			}
			if(form.getNum() != null && !form.getNum().isEmpty()){
				builder += " num = '"+form.getNum()+"' AND ";
			}
			
			if(!builder.isEmpty()){
				return " WHERE " + builder.substring(0, builder.length()-5);
			}
		}
		return "";
	}
}
