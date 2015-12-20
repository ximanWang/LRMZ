package com.lrmz.action.email;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.opensymphony.xwork2.ActionSupport;

public class Emailer extends ActionSupport {

   private String from = "lrmz_cie_nwsuaf@sina.cn";
   private String password = "15129310182";
   private String to;
   private String subject;
   private String body;

   static Properties properties = new Properties();
   static
   {
      properties.put("mail.smtp.host", "smtp.sina.com");
      properties.put("mail.smtp.socketFactory.port", "25");
//      properties.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
      properties.put("mail.smtp.auth", "true");
//      properties.put("mail.smtp.starttls.enable", "true");
      properties.put("mail.smtp.port", "25");
   }

   public String execute() 
   {
      String ret = SUCCESS;
      try
      {
         Session session = Session.getDefaultInstance(properties,  
            new javax.mail.Authenticator() {
            protected PasswordAuthentication 
            getPasswordAuthentication() {
            return new 
            PasswordAuthentication(from, password);
            }});

         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
         message.setSubject("密码修改 ：请点击以下链接修改");
         message.setText("http://192.168.12.32:8080/LRMZ/user/toUpdatePassword");
         Transport.send(message);
         System.out.println(message.getSubject());
      }
      catch(Exception e)
      {
         ret = ERROR;
         e.printStackTrace();
      }
      return ret;
   }

   public String getFrom() {
      return from;
   }

   public void setFrom(String from) {
      this.from = from;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public String getTo() {
      return to;
   }

   public void setTo(String to) {
      this.to = to;
   }

   public String getSubject() {
      return subject;
   }

   public void setSubject(String subject) {
      this.subject = subject;
   }

   public String getBody() {
      return body;
   }

   public void setBody(String body) {
      this.body = body;
   }

   public static Properties getProperties() {
      return properties;
   }

   public static void setProperties(Properties properties) {
      Emailer.properties = properties;
   }
}
