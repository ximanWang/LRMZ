package com.lrmz.action.goods;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.goods.IGoodsDAO;
import com.lrmz.entity.Goods;
import com.lrmz.util.FileUtil;

public class AddGoodsAction {
	
	private Goods goods;
	//接收临时文件对象
	private File some;
	//接收原始文件名，页面文本框name值+FileName
	private String someFileName;
	
	public File getSome() {
		return some;
	}

	public void setSome(File some) {
		this.some = some;
	}

	public String getSomeFileName() {
		return someFileName;
	}

	public void setSomeFileName(String someFileName) {
		this.someFileName = someFileName;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
	public String execute(){
		IGoodsDAO dao = DAOFactory.getGoodsDAO();
		try {
			if(some==null){
				return "error";
			}
			//拼相对于当前项目部署的路径
			String path = "/upload/"+someFileName;
			
			//根据相对路径找到其完整路径
			path = ServletActionContext.getServletContext().getRealPath(path);
			
			FileUtil.copy(some, new File(path));
			goods.setImage(someFileName);
			dao.add(goods);
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "ok";
	}
}
