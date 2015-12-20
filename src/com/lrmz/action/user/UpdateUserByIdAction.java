package com.lrmz.action.user;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.lrmz.action.BaseAction;
import com.lrmz.dao.DAOException;
import com.lrmz.dao.DAOFactory;
import com.lrmz.dao.user.IUserDAO;
import com.lrmz.entity.User;

public class UpdateUserByIdAction extends BaseAction {
	private int id;
	private User user;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	private String title;

	private File faceUpload;

	private String uploadContentType;

	private String faceUploadFileName;

	private String savePath = "\\upload";

	public String execute() {
		IUserDAO dao = DAOFactory.getUserDAO();
		try {
			dao.updateUser(user);
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		if (faceUpload == null) {
			return "error";
		}
		String savePath = ServletActionContext.getServletContext().getRealPath(
				File.separator + "faceUpload");
		File saveFile = new File(savePath);
		if (!saveFile.exists()) {
			saveFile.mkdirs();
		}
		User u = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		id = u.getUserID();
		String end = faceUploadFileName.substring(faceUploadFileName
				.lastIndexOf("."), faceUploadFileName.length());
		String newFileName = id + end;
		try {
			FileUtils.copyFile(faceUpload, new File(saveFile, newFileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "ok";
	}

	public void setSavePath(String value) {
		this.savePath = value;
	}

	@SuppressWarnings("deprecation")
	private String getSavePath() throws Exception {
		return ServletActionContext.getRequest().getRealPath(savePath);
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public File getFaceUpload() {
		return faceUpload;
	}

	public void setFaceUpload(File faceUpload) {
		this.faceUpload = faceUpload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
}
