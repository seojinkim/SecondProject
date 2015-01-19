package model.dao;

import java.sql.SQLException;
import java.util.List;

import model.domain.SpendBean;

import org.apache.ibatis.session.SqlSession;

import util.DBUtil;

public class SpendDAO {

	public static List<SpendBean> selectAll(String id) throws SQLException{
		SqlSession session = DBUtil.getSqlSession();
		List<SpendBean> spendList = null;
		try {
			spendList = session.selectList("SPEND.selectAll", id);
		} finally {
			session.close();
		}
		return spendList;
	}
	
	public static List selectMonthSpend(SpendBean ib) throws SQLException{
		SqlSession session = DBUtil.getSqlSession();
		List list = null;
		try {
			list = session.selectList("SPEND.selectMonthSpend", ib);
			System.out.println(list);
		} finally {
			session.close();
		}
		return list;
	}
}
