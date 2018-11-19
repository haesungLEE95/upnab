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

	public List<Board> list(int startRow, int endRow) {
		HashMap<String , Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("boardns.select",map);
	}
	public List<Board> listPo(int startRow, int endRow) {
		HashMap<String , Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("boardns.selPhoto",map);
	}
	public List<Board> listMo(int startRow, int endRow) {
		HashMap<String , Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("boardns.selMovie",map);
	}
	public int total() {
		return (int) session.selectOne("boardns.total");
	}
	public int insert(Board board) {
		return session.update("boardns.insert", board);
	}
	public Board select(int board_num) {
		return (Board) session.selectOne("boardns.select_bo", board_num);
	}
	public int pickup(int board_num) {
		// TODO Auto-generated method stub
		return session.update("boardns.pickup", board_num);
	}
	public int pickdown(int board_num) {
		// TODO Auto-generated method stub
		return session.update("boardns.pickdown", board_num);
	}
	public int hit(int board_num) {
		return session.update("boardns.hit", board_num);
	}
	public List<Board> listMy(int startRow, int endRow, String member_id) {
		HashMap<String , Object> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("member_id", member_id);
		return session.selectList("boardns.selMy",map);
	}
	public List<Board> listJim(int startRow, int endRow) {
		HashMap<String , Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("boardns.selMovie",map);
	}


	
}