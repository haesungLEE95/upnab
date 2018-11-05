package upnab.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import upnab.model.Board;
import upnab.model.Member;

public class BoardDao {
	private static BoardDao instance = new BoardDao();
	private BoardDao() {}
	public static BoardDao getInstance() {
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
	public Member select(String id) {
		return (Member) session.selectOne("memberns.select", id);
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
	public List<Board> list(int startRow, int endRow) {
		Map<String , Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("memberns.select",map);
	}
	public int total() {
		return (int) session.selectOne("memberns.total");
	}
	
}