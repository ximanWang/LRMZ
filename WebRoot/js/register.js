function changeValidateCode(obj) {      
		/*** 
		  *   获取当前的时间作为参数，无具体意义    
		  *   每次请求需要一个不同的参数，否则可能会返回同样的验证码     
		  *   这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。   
		  */  
		var timenow = new Date().getTime();      
		     
		obj.src="user/createValidateCode.action?d="+timenow;      
		}
// JavaScript Document
function searchId(va){
	return document.getElementById(va);
		return document.getElementById(va);
		//document.getElementById("email");
}

//将所有文本框单击效果放在一起
function inputOnclick(){
	//鼠标在打击和离开后的提示信息
		/*document.getElementById("email").onclick=function(){
			searchId("email").className="register_input_Focus";
			searchId("email_Id").innerHTML="此邮箱是你登录账号，并将用来接收验证邮箱";
			searchId("email_Id").className="register_prompt";
		}*/
	//鼠标在打击和离开后的提示信息
		searchId("nickName").onfocus=function(){
			$("#name").parent().find("span.t_text").hide();
		}
		searchId("nickName").onblur=function(){
			""==$.trim($("#name").val())&&$("#name").parent().find("span.t_text").show();
		}
		
		searchId("nickName").onclick=function(){
			$("#name").parent().find("span.t_text").hide();
			searchId("nickName").className="register_input_Focus";
			searchId("nickName_Id").innerHTML="昵称可由大小写因英文字母、数字_组成长度为4-20个字符";
			searchId("nickName_Id").className="register_prompt";
		}
	//密码框
		searchId("pwd").onfocus=function(){
			$("#pw").parent().find("span.t_text").hide();
		}
		searchId("pwd").onblur=function(){
			""==$.trim($("#pw").val())&&$("#pw").parent().find("span.t_text").show();
		}
		searchId("pwd").onclick=function(){
			$("#pw").parent().find("span.t_text").hide();
			searchId("pwd").className="register_input_Focus";
			searchId("pwd_Id").innerHTML="密码可由大小英文字母、数字组成长度为6-20个字符";
			searchId("pwd_Id").className="register_prompt";
		}
	//第二次输入密码
		searchId("repwd").onfocus=function(){
			$("#repw").parent().find("span.t_text").hide();
		}
		searchId("repwd").onblur=function(){
			""==$.trim($("#repw").val())&&$("#repw").parent().find("span.t_text").show();
		}
		searchId("repw").onclick=function(){
			$("#repw").parent().find("span.t_text").hide();
			searchId("repwd").className="register_input_Focus";
			//searchId("repwd_Id").innerHTML="请再次输入密码";
			//searchId("repwd_Id").className="register_prompt_error";
		}
		//searchId("email").onblur=checkEmail;
		searchId("nickName").onblur=checkName;
		searchId("pwd").onblur=checkPwd;
		searchId("repwd").onblur=checkRepwd;
}

//实现注册的email提示功能
/*function checkEmail(){
			var email=searchId("email").value;
			var email_Id=searchId("email_Id");//将提示信息显示在这个dd中
			var reg=/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
			if(email==""){
				email_Id.innerHTML="邮箱不能为空";
				email_Id.className="register_prompt_error";
				searchId("email").className="register_input_Blur";
				return false;
			}
			if(!reg.test(email)){
				email_Id.innerHTML="邮箱格式不正确";
				email_Id.className="register_prompt_error";
				searchId("email").className="register_input_Blur";
				return false;
			}
			email_Id.className="register_prompt_ok";
			searchId("email").className="register_input";//正确后恢复到原来的样式
			email_Id.innerHTML="";
			return true;
}*/
//验证昵称
function checkName(){
			var nickName=searchId("nickName").value;
			var nickName_Id=searchId("nickName_Id");//将提示信息显示在这个dd中
			var reg=/^\w{4,20}$/;
			var china=/^[^\x00-\xff]$/;//匹配中文
			if(nickName==""){
				nickName_Id.innerHTML="昵称不能为空";
				nickName_Id.className="register_prompt_error";
				searchId("nickName").className="register_input_Blur";
				return false;
			}
			if(!reg.test(nickName)){
				nickName_Id.innerHTML="昵称输入不正确";
				nickName_Id.className="register_prompt_error";
				searchId("nickName").className="register_input_Blur";
				return false;
			}/*else if(!china.test(china)){
				nickName_Id.innerHTML="昵称输入不正确";
				nickName_Id.className="register_prompt_error";
				searchId("nickName").className="register_input_Blur";
				return false;
			}*/
			nickName_Id.className="register_prompt_ok";
			searchId("nickName").className="register_input";//正确后恢复到原来的样式
			nickName_Id.innerHTML="";
			return true;
}

//验证密码
function checkPwd(){
			var pwd=searchId("pwd").value;
			var pwd_Id=searchId("pwd_Id");//将提示信息显示在这个dd中
			var reg=/^[A-Za-z0-9]+$/;
			if(pwd==""){
				pwd_Id.innerHTML="密码不能为空";
				pwd_Id.className="register_prompt_error";
				searchId("pwd").className="register_input_Blur";
				return false;
			}
			if(!reg.test(pwd)){
				pwd_Id.innerHTML="密码设置有误";
				pwd_Id.className="register_prompt_error";
				searchId("pwd").className="register_input_Blur";
				return false;
			}
			if(isNaN(pwd)==false){
				pwd_Id.innerHTML="密码不能全部为数字";
				pwd_Id.className="register_prompt_error";
				searchId("pwd").className="register_input_Blur";
				return false;
			}
			pwd_Id.className="register_prompt_ok";
			searchId("pwd").className="register_input";//正确后恢复到原来的样式
			pwd_Id.innerHTML="";
			return true;
}
//验证两次输入的密码是否一样
function checkRepwd(){
			var repwd=searchId("repwd").value;
			var pwd=searchId("pwd").value;
			var repwd_Id=searchId("repwd_Id");//将提示信息显示在这个dd中
			if(repwd==""){
				repwd_Id.innerHTML="请输入密码";
				repwd_Id.className="register_prompt_error";
				searchId("repwd").className="register_input_Blur";
				return false;
			}
			if(pwd!=repwd){
				repwd_Id.innerHTML="两次输入密码不一致";
				repwd_Id.className="register_prompt_error";
				searchId("repwd").className="register_input_Blur";
				return false;
			}
			repwd_Id.className="register_prompt_ok";
			searchId("repwd").className="register_input";//正确后恢复到原来的样式
			repwd_Id.innerHTML="";
			return true;
}
function checkAll(){
		var email=checkEmail();//实email邮箱的验证功能
		var name=checkName();
		var pwd=checkPwd();
		var repwd=checkRepwd();
		return email&&name&&pwd&&repwd
	
}
window.onload=function(){
		inputOnclick();
		onsubmit=checkAll;
}