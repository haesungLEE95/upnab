package upnab.dao;

import java.io.Reader;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import upnab.model.Pick;

public class PickDao {
	private static PickDao instance = new PickDao();

	private PickDao() {}

	public static PickDao getInstance() {
		return instance;
	}

	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
			reader.close();
		} catch (Exception e) {
			System.out.println("session�깮�꽦 : " + e.getMessage());
		}
	}
	public Pick select(int board_num, String member_id) {
		HashMap<String , Object> map = new HashMap<>();
		map.put("board_num", board_num);
		map.put("member_id", member_id);
		
		return (Pick) session.selectOne("pickns.select",map);
	}

	public int insert(int board_num, String member_id) {
		HashMap<String , Object> map = new HashMap<>();
		map.put("board_num", board_num);
		map.put("member_id", member_id);
		
		return session.update("pickns.insert",map);
	}

	public int delete(int board_num, String member_id) {
		HashMap<String , Object> map = new HashMap<>();
		map.put("board_num", board_num);
		map.put("member_id", member_id);
		
		return session.delete("pickns.delete",map);
	}

	public int deleteAll(int board_num) {
		return session.delete("pickns.deleteAll", board_num);
	}
}
