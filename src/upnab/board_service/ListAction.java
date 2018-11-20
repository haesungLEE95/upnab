package upnab.board_service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao;
import upnab.dao.PickDao;
import upnab.model.Board;
import upnab.model.Pick;

public class ListAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int rowPerPage = 20;
		int pagePerBlock = 10;
		String pageNum = request.getParameter("pageNum");
		if (pageNum==null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow  = startRow + rowPerPage - 1;
		BoardDao bd = BoardDao.getInstance();
		String member_id = (String)request.getSession().getAttribute("member_id");
		List<Board> list = bd.list(startRow, endRow);

		PickDao pd = PickDao.getInstance();
		for (Board board :list) {
			Pick pick =  pd.select(board.getBoard_num(), member_id);
			if (pick == null) {
				board.setJim(0);
			}
			else {
				board.setJim(1);
			}
		}

		int tot = bd.total();
		int total = tot - startRow + 1;	
		int startPage = currentPage - (currentPage-1)%pagePerBlock;
		int endPage = startPage + pagePerBlock - 1;
		int totPage = (int)Math.ceil((double)tot/rowPerPage);
		if (endPage > totPage) endPage = totPage;
	
		request.setAttribute("total", total);
		request.setAttribute("list", list);

		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totPage", totPage);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pagePerBlock", pagePerBlock);
			return "list";
	}

}
