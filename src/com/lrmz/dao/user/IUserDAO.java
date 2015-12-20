package com.lrmz.dao.user;
import java.util.List;

import com.lrmz.dao.DAOException;
import com.lrmz.entity.User;

public interface IUserDAO {
	
	List<User> findAll() throws DAOException;
	User findByName(String Cuser) throws DAOException;
	User findUserById(int id) throws DAOException;
	void deleteUserById(int id) throws DAOException;
	void updateUser(User user) throws DAOException;
	List<User> findByCondition(String userName,int sex, String address,int page, int pageSize) throws DAOException;
	List<User> findByPage(int page,int pageSize) throws DAOException;
	int findTotalPage(String userName,int sex, String address,int pageSize) throws DAOException;
	void addUser(User user) throws DAOException;
	void updatePasswd(User user) throws DAOException;
}
