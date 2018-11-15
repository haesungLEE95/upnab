package upnab.board_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao;
import upnab.dao.MemberDao;
import upnab.model.Board;
import upnab.model.Member;

public class View implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		BoardDao md = BoardDao.getInstance();
		Board board= md.select(board_num);
		request.setAttribute("board", board);
		return "view";
	}

}
