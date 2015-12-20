	
	$(function(){
		//验证码自动显示
		$('form img').fadeIn(900);
		//网页加载自动获得焦点
		$('#name').focus();
	
	})
	function changeValidateCode(obj) {      
		/*** 
		  *   获取当前的时间作为参数，无具体意义    
		  *   每次请求需要一个不同的参数，否则可能会返回同样的验证码     
		  *   这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。   
		  */  
		var timenow = new Date().getTime();      
		     
		obj.src="login/createValidateCode.action?d="+timenow;      
		}
	
	$(document).ready(function() {
		//向服务器发送表单数据
	    $("#sub").click(function() {
	      if($("#name").val()==""){
	    	  alert("用户名不能为空");
	    	  return;
	      }
	      if($("#psd").val()==""){
	    	  alert("密码不能为空");
	    	  return;
	      }
	    });
	});