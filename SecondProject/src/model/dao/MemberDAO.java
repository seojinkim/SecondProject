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
	
	//회원 가입
	public static MemberBean joinMember(MemberBean member) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		try {
			member = session.selectOne("MEMBER.joinMember", member);
		} finally {
			session.close();
		}
		return member;
	}
	//회원 탈퇴
	public static MemberBean deleteMember(MemberBean member) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		try {
			member = session.selectOne("MEMBER.deleteMember", member);
		} finally {
			session.close();
		}
		return member;
	}
	//회원 수정
	public static MemberBean updateMember(MemberBean member) throws SQLException {
		SqlSession session = DBUtil.getSqlSession();
		try {
			member = session.selectOne("MEMBER.updateMember", member);
		} finally {
			session.close();
		}
		return member;
	}
}
