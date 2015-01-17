package model.dao;

import java.sql.SQLException;
import java.util.List;

import model.domain.ExpenseBean;
import model.domain.ExpenseListBean;
import model.domain.IncomeListBean;

import org.apache.ibatis.session.SqlSession;

import util.DBUtil;

public class ExpenseListDAO {
	public static List<ExpenseListBean> selectExpenseList() throws SQLException{
		SqlSession session = DBUtil.getSqlSession();
		List<ExpenseListBean> allData = null;
		try {
			allData = session.selectList("EXPENSE_LIST.selectExpenseList");
		} finally {
			session.close();
		}
		return allData;
	}
}
