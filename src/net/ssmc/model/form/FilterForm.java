package net.ssmc.model.form;

import net.ssmc.enums.App;
import net.ssmc.enums.Page;

public class FilterForm {
	
	private App type;
	private Page page;
	private String name;
	private String filter;
	private String num;
	
	public App getType() {
		return type;
	}
	public void setType(App type) {
		this.type = type;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFilter() {
		return filter;
	}
	public void setFilter(String filter) {
		this.filter = filter;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "FilterForm [type=" + type + ", page=" + page + ", name=" + name + ", filter=" + filter + ", num=" + num
				+ "]";
	}
}
