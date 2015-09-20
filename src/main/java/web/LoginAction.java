package web;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	
	String user;
	String password;

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String login(){
		
		//Login hardcodeado, no es esencial en el prototipo.
		if("administrador".equals(user)&&"admin".equals(password))
			return SUCCESS;
		else
			return ERROR;
		
	}
}