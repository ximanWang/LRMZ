package com.lrmz.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
/**
 * 登录检查拦截器
 * @author ximan
 */
public class UserLoginInterceptor implements Interceptor {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void init() {
		// TODO Auto-generated method stub

	}

	public String intercept(ActionInvocation ai) throws Exception {
		Map<String,Object> session = ai.getInvocationContext().getSession();
		Object user = session.get("user");
		if(user==null){
			//session中admin为空说明没登录，踢回登录页面
			return "login";
		}else{
			//session中admin不为空，说明已经登录可以直接访问
			return ai.invoke();
		}
	}
}
