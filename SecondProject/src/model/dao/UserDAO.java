package model.dao;

import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import util.DBUtil;
import model.domain.UserBean;

public class UserDAO {
	public static UserBean isIdValid(UserBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		UserBean data = null;
		try {

			data = session.selectOne("USERS.isIdValid", bean);
		} finally {
			session.close();
		}
		return data;
	}

	public static UserBean selectOneByIdFromUser(String id) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		UserBean data = null;
		try {

			data = session.selectOne("USERS.selectOneByIdFromUser", id);
		} finally {
			session.close();
		}
		return data;
	}
	/*	public static void join(UserBean bean) throws SQLException, PersistenceException{
			SqlSession session = DBUtil.getSqlSession(true);
			try {
				session.insert("USERS.join", bean);
			} finally {
				session.close();
			}
		}*/
}
