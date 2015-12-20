package com.lrmz.action;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 这是所有Action的一个父类
 * 用于封装通用的逻辑
 * @author ximan
 */
public class BaseAction extends ActionSupport implements
			ServletRequestAware,ServletResponseAware,SessionAware{

	
	private static final long serialVersionUID = 1L;
	public HttpServletRequest request;
	public HttpServletResponse response;
	public Map<String,Object> session;

	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
}
