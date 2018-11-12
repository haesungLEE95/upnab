package upnab.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import upnab.model.Support;

public class SupportDao {
	private static SupportDao instance = new SupportDao();
	private SupportDao() {}
	public static SupportDao getInstance() {
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
	public Support select(int support_num) {
		return (Support) session.selectOne("supportns.select_num", support_num);
	}
	public int insert(Support support) {
		return session.update("supportns.insert", support);
	}
	public List<Support> list(int startRow, int endRow) {
		HashMap<String , Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("supportns.select",map);
	}
	public int total() {
		return (int) session.selectOne("supportns.total");
	}
}