package model.dao;

import java.sql.SQLException;
import java.util.List;

import model.domain.ExpenseBean;
import model.domain.IncomeBean;

import org.apache.ibatis.session.SqlSession;

import util.DBUtil;

public class IncomeDAO {
	public static List<IncomeBean> selectAll(String id) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		List<IncomeBean> allData = null;
		try {
			allData = session.selectList("INCOME.selectAll", id);
		} finally {
			session.close();
		}
		return allData;
	}

	public static List<IncomeBean> selectByCode(IncomeBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		List<IncomeBean> allData = null;
		try {
			allData = session.selectList("INCOME.selectByCode", bean);
		} finally {
			session.close();
		}
		return allData;
	}

	public static List<IncomeBean> selectByDate(IncomeBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		List<IncomeBean> allData = null;
		try {
			allData = session.selectList("INCOME.selectByDate", bean);
		} finally {
			session.close();
		}
		return allData;
	}

	public static List<IncomeBean> selectByPrice(IncomeBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		List<IncomeBean> allData = null;
		try {
			allData = session.selectList("INCOME.selectByPrice", bean);
		} finally {
			session.close();
		}
		return allData;
	}

	public static void insertToday(IncomeBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession(true);
		try {
			session.insert("INCOME.insertToday", bean);
		} finally {
			session.close();
		}
	}

	public static void insertCustomDay(IncomeBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession(true);
		try {
			session.insert("INCOME.insertCustomDay", bean);
		} finally {
			session.close();
		}
	}

	public static void updateByIndex(IncomeBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession(true);
		try {
			session.insert("INCOME.updateByIndex", bean);
		} finally {
			session.close();
		}
	}

	public static IncomeBean selectOneByIndex(IncomeBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		IncomeBean data = null;
		try {
			data = session.selectOne("INCOME.selectOneByIndex", bean);
		} finally {
			session.close();
		}
		return data;
	}

	public static void deleteByIndex(IncomeBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		try {
			session.delete("INCOME.deleteByIndex", bean);
		} finally {
			session.close();
		}
	}
	
	public static int selectTotalIncome(String id)throws SQLException{
		SqlSession session = DBUtil.getSqlSession();
		int data = 0;
		try{
			data = session.selectOne("INCOME.selectTotalIncome",id);
		}finally{
			session.close();
		}
		return data;
	}
}
