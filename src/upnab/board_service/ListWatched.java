package upnab.board_service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao;
import upnab.dao.MemberDao;
import upnab.model.Board;
import upnab.model.Member;

public class ListWatched implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
/*		int rowPerPage = 20;
		int pagePerBlock = 10;
		String pageNum = request.getParameter("pageNum");
		if (pageNum==null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow  = startRow + rowPerPage - 1;
		BoardDao bd = BoardDao.getInstance();
		주석String member_id = (String)request.getSession().getAttribute("member_id");
		주석MemberDao md = MemberDao.getInstance();
		주석Member member = md.select(member_id);
		System.out.println("before");
		ArrayList<Integer> watched=(ArrayList<Integer>) request.getSession().getAttribute("watched");
		System.out.println("watched 길이 : "+watched.size());
		for(int i=0;i<watched.size();i++)
			System.out.println(watched.get(i));
		System.out.println("after");
		List<Board> listWatched = bd.listWatched(startRow, endRow, watched);
		System.out.println("after dao");
		int tot = bd.total();
		int total = tot - startRow + 1;	
		int startPage = currentPage - (currentPage-1)%pagePerBlock;
		int endPage = startPage + pagePerBlock - 1;
		int totPage = (int)Math.ceil((double)tot/rowPerPage);
		if (endPage > totPage) endPage = totPage;
	
		request.setAttribute("total", total);
		request.setAttribute("listWatched", listWatched);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totPage", totPage);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pagePerBlock", pagePerBlock);
*/		
		BoardDao bd = BoardDao.getInstance();
		ArrayList<Integer> watched=(ArrayList<Integer>) request.getSession().getAttribute("watched");
		List<Board> listWatched = bd.listWatched(watched);
		request.setAttribute("listWatched", listWatched);
		
		return "listWatched";
	}

}
