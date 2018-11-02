package upnab.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import upnab.dao.MemberDao;
import upnab.model.Member;
public class MainAction implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("member_id");
		MemberDao md = MemberDao.getInstance();
		if (member_id != null) {
			Member member = md.select(member_id);
			request.setAttribute("member", member);
		}		
		return "main";
	}
}