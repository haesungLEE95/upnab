package upnab.board_service;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao; 
import upnab.model.Board;
public class InsertAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try{ request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		Board board = new Board();
		board.setNum(Integer.parseInt(request.getParameter("num")));
		board.setSubject(request.getParameter("subject"));
		board.setWriter(request.getParameter("writer"));
		board.setContent(request.getParameter("content"));
		board.setEmail(request.getParameter("email"));
		board.setPasswd(request.getParameter("passwd"));
		board.setRe_level(Integer.parseInt(request.getParameter("re_level")));
		board.setRef(Integer.parseInt(request.getParameter("ref")));
		board.setRe_step(Integer.parseInt(request.getParameter("re_step")));
		String pageNum = request.getParameter("pageNum");
		BoardDao bd = BoardDao.getInstance();
		String ip   = request.getRemoteAddr();
		board.setIp(ip);
		int result  = bd.insert(board);
		
		request.setAttribute("result", result);
		request.setAttribute("pageNum", pageNum);
		return "insert";
	}

}
