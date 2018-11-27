package upnab.dao;

import java.io.Reader;
import java.util.ArrayList;
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
			System.out.println("session�깮�꽦 : "+e.getMessage());
		}
	}

	public List<Board> list(int startRow, int endRow) {
		HashMap<String , Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("boardns.select",map);
	}
	public List<Board> listWatched(ArrayList<Integer> watched) {
		List<Board> list = new ArrayList<>();
		for (int i =watched.size()-1; i >=0;i--) {
			HashMap<String , Integer> map = new HashMap<>();
			map.put("watched", watched.get(i));
			Board board = (Board)session.selectOne("boardns.seleW", map);
			list.add(board);
		}
		return list;
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
	public List<Board> listCate(int startRow, int endRow, String category_id, int type) {
		HashMap<String , Object> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("category_id", category_id);
		if(type==2) {
			return session.selectList("boardns.selAlCate",map);
		}
		else {
			map.put("type", type);
			
			return session.selectList("boardns.selCate",map);
		}
	}
	public int total() {
		return (int) session.selectOne("boardns.total");
	}
	public int totalPo() {
		return (int) session.selectOne("boardns.totalPo");
	}
	public int totalMo() {
		return (int) session.selectOne("boardns.totalMo");
	}
	public int totalMy(String member_id) {
		return (int) session.selectOne("boardns.totalMy",member_id);
	}
	public int totalCa() {
		return (int) session.selectOne("boardns.totalCa");
	}
	public int totalJim() {
		return (int) session.selectOne("boardns.totalJim");
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
	public List<Board> listJim(int startRow, int endRow, String member_id) {
		HashMap<String , Object> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("member_id", member_id);
		
		return session.selectList("boardns.selJim",map);
	}
	public int delete(int board_num) {
		return session.delete("boardns.delete", board_num);
	}
}