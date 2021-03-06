package upnab.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import upnab.model.Member;

public class MemberDao {
	private static MemberDao instance = new MemberDao();
	private MemberDao() {}
	public static MemberDao getInstance() {
		return instance;
	}
	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session=ssf.openSession(true);
			reader.close();
		} catch (Exception e) {
			System.out.println("session생성 : "+e.getMessage());
		}
	}
	public Member select(String member_id) {
		return (Member) session.selectOne("memberns.select", member_id);
	}
	public int update(Member member) {
		
		return session.update("memberns.update",member);
	}
	public int insert(Member member) {
		return session.update("memberns.insert",member);
	}
	public int delete(String id) {
		return session.delete("memberns.delete",id);
	}
	
}