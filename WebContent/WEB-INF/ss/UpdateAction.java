package upnab.board_service;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao; 
import upnab.model.Board;
public class UpdateAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		
		Board board = new Board();
		String pageNum=request.getParameter("pageNum");
		board.setNum(Integer.parseInt(request.getParameter("num")));
		board.setSubject(request.getParameter("subject"));
		board.setWriter(request.getParameter("writer"));
		board.setContent(request.getParameter("content"));
		board.setEmail(request.getParameter("email"));
		BoardDao bd = BoardDao.getInstance();
		int result  = bd.update(board);
		
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("board", board);
		request.setAttribute("result", result);

		return "update";
	}
}