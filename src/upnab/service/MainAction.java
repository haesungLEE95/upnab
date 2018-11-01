package upnab.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import upnab.dao.MemberDao;
import upnab.model.Member;
public class MainAction implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MemberDao md = MemberDao.getInstance();
		if (id != null) {
			Member member = md.select(id);
			request.setAttribute("member", member);
		}		
		return "main";
	}
}