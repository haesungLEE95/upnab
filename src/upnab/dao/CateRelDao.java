package upnab.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import upnab.model.Category;

public class CateRelDao {
	private static CateRelDao instance = new CateRelDao();
	private CateRelDao() {}
	public static CateRelDao getInstance() {
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
	public int insert(int category_id, int board_num) {
		HashMap<String , Integer> map = new HashMap<>();
		map.put("category_id", category_id);
		map.put("board_num", board_num);
		
		
		return session.update("cateRelns.insert", map);
	}
	
}
