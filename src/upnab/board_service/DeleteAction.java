package upnab.board_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao;
import upnab.dao.CateRelDao;
import upnab.dao.CategoryDao;
import upnab.dao.PickDao;
import upnab.model.Board;
import upnab.model.Category;
import upnab.model.Pick;

public class DeleteAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		
		PickDao pd = PickDao.getInstance();
		int pick = pd.deleteAll(board_num);
		
		
		CateRelDao cg = CateRelDao.getInstance();
		int category = cg.delete(board_num);
		
		BoardDao bd = BoardDao.getInstance();
		int board = bd.delete(board_num);

		int result=1;

		request.setAttribute("result", result);
		return "delete";
	}

}
