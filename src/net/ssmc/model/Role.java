package net.ssmc.model;

import java.io.Serializable;

import net.ssmc.enums.Access;
import net.ssmc.enums.Module;

public class Role implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private Module module;
	private Access access;
	private boolean status;
	
	public Role() {
	}
	public Role(int id, String name) {
		this.id=id;
		this.name=name;
	}
	public Role(Module module, Access access) {
		this.access=access;
		this.module=module;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Access getAccess() {
		return access;
	}
	public void setAccess(Access access) {
		this.access = access;
	}
	public Module getModule() {
		return module;
	}
	public void setModule(Module module) {
		this.module = module;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((access == null) ? 0 : access.hashCode());
		result = prime * result + ((module == null) ? 0 : module.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Role other = (Role) obj;
		if (access != other.access)
			return false;
		if (module != other.module)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Role [id=" + id + ", name=" + name + ", module=" + module + ", access=" + access + ", status=" + status
				+ "]";
	}
	
}
