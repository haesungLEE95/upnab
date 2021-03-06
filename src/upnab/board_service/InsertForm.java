package upnab.board_service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.CategoryDao;
import upnab.dao.MemberDao;
import upnab.model.Category;
import upnab.model.Member;

public class InsertForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		CategoryDao cd = CategoryDao.getInstance();
		List<Category> category  = cd.total();
		MemberDao md  = MemberDao.getInstance();
		Member member_id = md.select("member_id");
		
		request.setAttribute("category", category);
		request.setAttribute("member_id", member_id);		
		return "insertForm";
	}

}
