package util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import controller.Debugging;

public class DBUtil {

	private static SqlSessionFactory factory = null;

	static {
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream("conf/config.xml");
			Debugging.printDebuggingMessage(inputStream.toString());
			factory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static SqlSession getSqlSession() {
		return factory.openSession();
	}

	public static SqlSession getSqlSession(boolean autoCommit) {
		return factory.openSession(autoCommit);
	}

	public static void closeSqlSession(boolean commit, SqlSession session) {
		if (session != null) {
			if (commit) {
				session.commit();
			} else {
				session.rollback();
			}
			session.close();
		}
	}
}
