package upnab.board_service;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao;
import upnab.dao.CateRelDao;
import upnab.model.Board;
public class InsertAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try{ request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		Board board = new Board();
		//board.setNum(Integer.parseInt(request.getParameter("num")));
		board.setMember_id(request.getParameter("member_id"));
		board.setBoard_content(request.getParameter("board_content"));
		
		if(request.getParameter("board_share")==null) {
			board.setBoard_share(0);
		}else {
			board.setBoard_share(1);
		}
		if(request.getParameter("board_type")==null) {
			board.setBoard_type(0);
		}else {
			board.setBoard_type(1);
		}
		BoardDao bd = BoardDao.getInstance();
		int result  = bd.insert(board);
		int board_num = board.getBoard_num();
		
		int rt = 0;
		String[] pick = request.getParameterValues("category_pick");
		for (int i = 0; i < pick.length; i++) {
			CateRelDao cd = CateRelDao.getInstance();
			rt = cd.insert(Integer.parseInt(pick[i]),board_num);
		}
		
		request.setAttribute("result", result);
		request.setAttribute("rt", rt);
		return "insert";
	}

}
