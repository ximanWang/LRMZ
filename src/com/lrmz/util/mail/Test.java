package com.lrmz.util.mail;

public class Test{
	public static void main(String[] args){
		
		//这个类主要是设置邮件
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.sina.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("lrmz_cie_nwsuaf@sina.cn");
		mailInfo.setPassword("15129310182");//您的邮箱密码
		mailInfo.setFromAddress("lrmz_cie_nwsuaf@sina.cn");
		mailInfo.setToAddress("1290403847@qq.com");
		mailInfo.setSubject("密码修改");
		mailInfo.setContent("http://localhost:8080/LRMZ/updatePassword");

		//这个类主要来发送邮件
		SimpleMailSender sms = new SimpleMailSender();
		sms.sendTextMail(mailInfo);//发送文体格式
		sms.sendHtmlMail(mailInfo);//发送html格式
	}
}
