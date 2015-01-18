package model.dao;

import java.sql.SQLException;
import java.util.List;

import model.domain.MemberBean;

import org.apache.ibatis.session.SqlSession;

import util.DBUtil;

public class MemberDAO {
	public static MemberBean isIdPwValid(MemberBean member) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		try {
			member = session.selectOne("MEMBER.isIdPwValid", member);
		} finally {
			session.close();
		}
		return member;
	}
}
