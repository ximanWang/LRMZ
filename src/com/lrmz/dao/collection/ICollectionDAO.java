package com.lrmz.dao.collection;
import java.util.List;

import com.lrmz.dao.DAOException;
import com.lrmz.entity.Collection;
import com.lrmz.entity.Goods;
import com.lrmz.entity.User;

public interface ICollectionDAO {
	void addCollection(Collection collection) throws DAOException;
	List<Goods> findAllCollection(int uid,int page, int pageSize) throws DAOException;
	void deleteCollection(int gid, int uid) throws DAOException;
	List<Collection> findGoodsIDByUserID(int uid) throws DAOException;
	List<Collection> findByPage(int uid,int page, int pageSize) throws DAOException;
	int findTotalPage(int uid,int pageSize) throws DAOException;
}
