package upnab.board_service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao; 
import upnab.model.Board;

public class ListActionMo implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int rowPerPage = 100;
		int pagePerBlock = 10;
		String pageNum = request.getParameter("pageNum");
		if (pageNum==null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow  = startRow + rowPerPage - 1;
		BoardDao bd = BoardDao.getInstance();
		List<Board> listMo = bd.listMo(startRow, endRow);	
		int tot = bd.total();
		int total = tot - startRow + 1;	
		int startPage = currentPage - (currentPage-1)%pagePerBlock;
		int endPage = startPage + pagePerBlock - 1;
		int totPage = (int)Math.ceil((double)tot/rowPerPage);
		if (endPage > totPage) endPage = totPage;
	
		request.setAttribute("total", total);
		request.setAttribute("listMo", listMo);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totPage", totPage);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pagePerBlock", pagePerBlock);
		
		return "listMo";
	}

}
