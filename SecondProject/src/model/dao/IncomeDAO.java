package model.dao;

import java.sql.SQLException;
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
}
