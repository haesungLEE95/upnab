package upnab.support_service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao;
import upnab.dao.MemberDao;
import upnab.dao.SupportDao;
import upnab.model.Board;
import upnab.model.Member;
import upnab.model.Support;

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
		SupportDao sd = SupportDao.getInstance();
		String member_id = (String)request.getSession().getAttribute("member_id");
		
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(member_id);
				
		List<Support> list = sd.list(startRow, endRow);	
		
		int tot = sd.total();
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
		request.setAttribute("member", member);
		
		return "list";
	}

}
