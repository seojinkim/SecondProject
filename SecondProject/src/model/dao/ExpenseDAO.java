package model.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import controller.Debugging;
import util.DBUtil;
import model.domain.ExpenseBean;

public class ExpenseDAO {
	public static List<ExpenseBean> selectAll(String id) throws SQLException {
		
		SqlSession session = DBUtil.getSqlSession();
		List<ExpenseBean> allData = null;
		try {
			allData = session.selectList("EXPENSE.selectAll", id);
		} finally {
			session.close();
		}
		return allData;
	}

	public static List<ExpenseBean> selectByCode(ExpenseBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		List<ExpenseBean> allData = null;
		try {
			allData = session.selectList("EXPENSE.selectByCode", bean);
		} finally {
			session.close();
		}
		return allData;
	}

	public static List<ExpenseBean> selectByDate(ExpenseBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		List<ExpenseBean> allData = null;
		try {
			allData = session.selectList("EXPENSE.selectByDate", bean);
		} finally {
			session.close();
		}
		return allData;
	}

	public static List<ExpenseBean> selectByPrice(ExpenseBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		List<ExpenseBean> allData = null;
		try {
			allData = session.selectList("EXPENSE.selectByPrice", bean);
		} finally {
			session.close();
		}
		return allData;
	}

	public static void insertToday(ExpenseBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession(true);
		try {
			session.insert("EXPENSE.insertToday", bean);
		} finally {
			session.close();
		}
	}

	public static void insertCustomDay(ExpenseBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession(true);
		try {
			session.insert("EXPENSE.insertCustomDay", bean);
		} finally {
			session.close();
		}
	}

	public static void updateByIndex(ExpenseBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession(true);
		try {
			session.update("EXPENSE.updateByIndex", bean);
		} finally {
			session.close();
		}
	}

	public static ExpenseBean selectOneByIndex(ExpenseBean bean) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		ExpenseBean data = null;
		try {
			data = session.selectOne("EXPENSE.selectOneByIndex", bean);
		} finally {
			session.close();
		}
		return data;
	}

	public static void deleteByIndex(ExpenseBean bean) throws SQLException{
		SqlSession session = DBUtil.getSqlSession(true);
		try{
			session.delete("EXPENSE.deleteByIndex", bean);
		}finally{
			session.close();
		}
	}
	
	public static int selectTotalExpense(String id)throws SQLException{
		SqlSession session = DBUtil.getSqlSession();
		int data = 0;
		try{
			data = session.selectOne("EXPENSE.selectTotalExpense",id);
		}finally{
			session.close();
		}
		return data;
	}
}
