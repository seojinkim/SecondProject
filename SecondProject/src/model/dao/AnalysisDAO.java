package model.dao;

import java.sql.SQLException;

import model.domain.AnalysisBean;

import org.apache.ibatis.session.SqlSession;

import util.DBUtil;

public class AnalysisDAO {
	public static void updateBalance(String id) throws SQLException {
		SqlSession session = DBUtil.getSqlSession(true);
		try {
			session.update("ANALYSIS.updatBalance", id);
		} finally {
			session.close();
		}
	}
	public static int selectBalance(String id) throws SQLException {
		SqlSession session = DBUtil.getSqlSession(true);
		int balance = 0;
		try{
			balance = session.selectOne("ANALYSIS.selectBalance", id);
		}finally{
			session.close();
		}
		return balance;
	}
	
}
