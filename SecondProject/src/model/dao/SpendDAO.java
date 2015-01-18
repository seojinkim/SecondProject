package model.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import controller.Debugging;
import util.DBUtil;
import model.domain.SpendBean;

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
}
