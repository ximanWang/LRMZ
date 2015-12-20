package com.lrmz.dao.evaluation;
import java.util.List;
import com.lrmz.dao.DAOException;
import com.lrmz.entity.Evaluate;
import com.lrmz.entity.Goods;


public interface IEvaluateDAO {
 void addEvaluate(Evaluate evaluate) throws DAOException;
 List<Evaluate>findAll(int gid)throws DAOException;
 void deleteEvaluate(int id) throws DAOException;
 List<Goods> findByPage(int page, int pageSize) throws DAOException;
	int findTotalPage(
			int gid,
			int uid,
			String evalution,
			int skin,
			String star,
			int pageSize) throws DAOException;

}
