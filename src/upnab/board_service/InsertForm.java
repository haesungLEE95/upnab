package upnab.board_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao; 
import upnab.model.Board;

public class InsertForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int num=0, ref=0, re_level=0, re_step=0;
		String pageNum = request.getParameter("pageNum");
		String nm = request.getParameter("num");
		if (nm != null) { 
			num = Integer.parseInt(nm);
			BoardDao bd = BoardDao.getInstance();
			Board board = bd.select(num);
			ref = board.getRef();
			re_step  = board.getRe_step();
			re_level = board.getRe_level();
		}
		
		request.setAttribute("num", num);
		request.setAttribute("ref", ref);
		request.setAttribute("re_level", re_level);
		request.setAttribute("re_step", re_step);
		request.setAttribute("pageNum", pageNum);
		
		return "insertForm";
	}

}
