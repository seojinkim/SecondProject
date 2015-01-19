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
	
	//지출 내용 삽입
	public static int insertSpend(SpendBean sb) throws SQLException{
		SqlSession session = DBUtil.getSqlSession();
		int result = 0;
		try {
			result = session.selectOne("SPEND.insertSpend", sb);	
		} finally {
			session.close();
		}
		return result;	//select 성공하면 1을 리턴
	}
	
	//지출 목록 수정
	public static int updateSpend(SpendBean sb) throws SQLException{
		SqlSession session = DBUtil.getSqlSession();
		int result = 0;
		try {
			result = session.selectOne("SPEND.updateSpend", sb);	
			//System.out.println(result);
		} finally {
			session.close();
		}
		return result;	//update 성공하면 1을 리턴
	}
	
	//지출 목록 삭제
	public static int deleteSpend(SpendBean sb) throws SQLException{
		SqlSession session = DBUtil.getSqlSession();
		int result = 0;
		try {
			result = session.selectOne("SPEND.deleteSpend", sb);
			//System.out.println(result);
		} finally {
			session.close();
		}
		return result;	//delete 성공하면 1을 리턴
	}
}
