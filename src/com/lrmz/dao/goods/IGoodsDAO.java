package com.lrmz.dao.goods;

import java.util.List;

import com.lrmz.dao.DAOException;
import com.lrmz.entity.Goods;

public interface IGoodsDAO {
	List<Goods> findAll() throws DAOException;
	List<Goods> findByCname(String cname) throws DAOException;
	List<Goods> findByCondition(String goodsName,
			String cname,String gbrand,
			int isShow,int page, int pageSize) throws DAOException;
	Goods findById(int id) throws DAOException;
	void add(Goods goods) throws DAOException;
    void update(Goods goods) throws DAOException;
	void deleteGoods(int id) throws DAOException; 
	List<Goods> findByPage(int page, int pageSize) throws DAOException;
	int findTotalPage(
			String goodsName,
			String cname,
			String gbrand,
			int isShow,
			int pageSize) throws DAOException;
}
