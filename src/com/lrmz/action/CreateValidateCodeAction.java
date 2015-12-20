package com.lrmz.action;

import java.awt.image.BufferedImage;
import java.io.InputStream;
import java.util.Map;
import com.lrmz.action.BaseAction;
import com.lrmz.util.ImageUtil;
import com.opensymphony.xwork2.ActionContext;
/**
 * 可以继承ActionSupport，这个类是Struts2中默认调用的
 * Action类
 * @author ximan
 *
 */
public class CreateValidateCodeAction extends BaseAction{

	//input
	private InputStream imageStream;
	
	public String execute(){
		//1.调用工具类，生成验证码及图片
		Map<String,BufferedImage> imageMap = ImageUtil.createImage();
		//2.从imageMap中取到验证码，并放入session中
		String imageCode = imageMap.keySet().iterator().next();
		//session.put("imageCode",imageCode );
		ActionContext.getContext().getSession().put("imageCode",imageCode);
		//3.从imageMap取到图片，转为输入流
		BufferedImage image = imageMap.get(imageCode);
		imageStream = ImageUtil.getInputStream(image);
		return "success";
	}

	public InputStream getImageStream() {
		return imageStream;
	}
	public void setImageStream(InputStream imageStream) {
		this.imageStream = imageStream;
	}
}
