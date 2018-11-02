package upnab.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.MemberDao;
import upnab.model.Member;
public class ViewAction implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String member_id=(String)request.getSession().getAttribute("member_id");
		MemberDao md = MemberDao.getInstance();
		Member member  = md.select(member_id);
		request.setAttribute("member", member);
		return "view";
	}
}