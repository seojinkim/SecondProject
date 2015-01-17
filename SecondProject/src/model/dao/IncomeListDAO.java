package model.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import util.DBUtil;
import model.domain.IncomeBean;
import model.domain.IncomeListBean;

public class IncomeListDAO {
	public static List<IncomeListBean> selectIncomeList() throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		List<IncomeListBean> allData = null;
		try {
			allData = session.selectList("INCOME_LIST.selectIncomeList");
		} finally {
			session.close();
		}
		return allData;
	}
}
