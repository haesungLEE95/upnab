package upnab.board_service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao; 
import upnab.model.Board;
public class UpdateForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum=request.getParameter("pageNum");
		BoardDao bd = BoardDao.getInstance();
		Board board  = bd.select(num); 
		
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("board", board);
	
		return "updateForm";
	}
}