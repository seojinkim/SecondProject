package model.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.domain.SpendBean;
import model.domain.IncomeBean;

import org.apache.ibatis.session.SqlSession;

import util.DBUtil;

public class IncomeDAO {

	public static List<IncomeBean> selectAll(String id) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		List<IncomeBean> incomeList = null;
		try {
			incomeList = session.selectList("INCOME.selectAll", id);
		} finally {
			session.close();
		}
		return incomeList;
	}

	public static int insertIncome(IncomeBean income) throws SQLException {
		SqlSession session = null;
		int result = 0;
		try {
			session = DBUtil.getSqlSession(true);
			result = session.insert("INCOME.insertIncome", income);
		} finally {
			session.close();
		}
		return result;
	}

	public static int updateIncome(IncomeBean income) throws SQLException {
		SqlSession session = null;
		int result = 0;
		try {
			session = DBUtil.getSqlSession(true);
			result = session.update("INCOME.updateIncome", income);
		} finally {
			session.close();
		}
		return result;
	}

	public static int deleteIncome(String id) throws SQLException {
		SqlSession session = null;
		int result = 0;
		try {
			session = DBUtil.getSqlSession(true);
			result = session.delete("INCOME.deleteIncome", id);
		} finally {
			session.close();
		}
		return result;
	}

}
