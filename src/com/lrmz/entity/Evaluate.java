package com.lrmz.entity;

public class Evaluate {
	private int EvalutionID;
	private int GoodsID;
	private int UserID;
	private String Evalution;
	private int skin;
	private String Star;

	public void setGoodsID(int goodsID) {
		GoodsID = goodsID;
	}

	public int getGoodsID() {
		return GoodsID;
	}

	public void setUserID(int userID) {
		UserID = userID;
	}

	public int getUserID() {
		return UserID;
	}

	public void setStar(String star) {
		Star = star;
	}

	public String getStar() {
		return Star;
	}

	public void setEvalutionID(int evalutionID) {
		EvalutionID = evalutionID;
	}

	public int getEvalutionID() {
		return EvalutionID;
	}

	
	
	public void setEvalution(String evalution) {
		Evalution = evalution;
	}

	public String getEvalution() {
		return Evalution;
	}

	public void setSkin(int skin) {
		this.skin = skin;
	}

	public int getSkin() {
		return skin;
	}

}
