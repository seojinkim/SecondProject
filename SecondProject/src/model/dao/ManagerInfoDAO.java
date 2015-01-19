package model.dao;

import java.sql.SQLException;
import java.util.List;

import model.domain.IncomeBean;
import model.domain.ManagerInfoBean;

import org.apache.ibatis.session.SqlSession;

import util.DBUtil;

public class ManagerInfoDAO {

	// 매니저 선택전, 매니저 정보를 회원에게 보여주기위한 로직
	public static List<ManagerInfoBean> selectAll() throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		List<ManagerInfoBean> managerInfoList = null;
		try {
			managerInfoList = session.selectList("MANAGER_INFO.selectAllManager");
		} finally {
			session.close();
		}
		return managerInfoList;
	}
	
	// 매니저 선택후, 매니저 정보를 회원에게 보여주기위한 로직
	public static ManagerInfoBean selectAll(int managerInfoNum) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		ManagerInfoBean managerInfo = null;
		try {
			managerInfo = session.selectOne("MANAGER_INFO.selectManager", managerInfoNum);
		} finally {
			session.close();
		}
		return managerInfo;
	}
	
	
}
