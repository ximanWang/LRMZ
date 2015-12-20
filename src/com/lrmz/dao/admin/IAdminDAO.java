package com.lrmz.dao.admin;

import java.sql.SQLException;

import com.lrmz.dao.DAOException;
import com.lrmz.entity.Admin;

public interface IAdminDAO {
	public Admin findByName(String admin_name) throws DAOException, SQLException;
}
