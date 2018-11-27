package upnab.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import upnab.dao.MemberDao;

public class DeleteAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
	/*	HttpSession session = request.getSession();
		String member_id=(String)session.getAttribute("member_id");
		MemberDao md = MemberDao.getInstance();
		int result = md.delete(member_id);
		if (result > 0) 
			session.invalidate();
		request.setAttribute("result", result);*/
		return "delete";
	}
}