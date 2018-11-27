package upnab.board_service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao;
import upnab.dao.CategoryDao;
import upnab.dao.MemberDao;
import upnab.dao.PickDao;
import upnab.model.Board;
import upnab.model.Category;
import upnab.model.Member;
import upnab.model.Pick;

public class CategoryList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String category_id = request.getParameter("category");
		String category_name = request.getParameter("category_name");
		int type = Integer.parseInt(request.getParameter("type"));
		
		
		CategoryDao cd = CategoryDao.getInstance();
		List<Category> category  = cd.total();
		request.setAttribute("category", category);
		request.setAttribute("category_name", category_name);
		request.setAttribute("category_id", category_id);
		request.setAttribute("type", type);
		
		
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

		List<Board> listCate = bd.listCate(startRow, endRow, category_id, type);	
		
		
		String member_id = (String)request.getSession().getAttribute("member_id");
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(member_id);
		PickDao pd = PickDao.getInstance();
		for (Board board :listCate) {
			Pick pick =  pd.select(board.getBoard_num(), member_id);
			if (pick == null) {
				board.setJim(0);
			}
			else {
				board.setJim(1);
			}
		}
		
		int tot = bd.totalCa();
		int total = tot - startRow + 1;	
		int startPage = currentPage - (currentPage-1)%pagePerBlock;
		int endPage = startPage + pagePerBlock - 1;
		int totPage = (int)Math.ceil((double)tot/rowPerPage);
		if (endPage > totPage) endPage = totPage;
		
		
		
		
		

		
		
		
		request.setAttribute("total", total);
		request.setAttribute("listCate", listCate);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totPage", totPage);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pagePerBlock", pagePerBlock);
		request.setAttribute("member", member);		
		return "categoryList";
	}

}
