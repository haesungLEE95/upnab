package upnab.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.MemberDao;
import upnab.model.Member;

public class UpdateForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id=(String)request.getSession().getAttribute("id");
		MemberDao md = MemberDao.getInstance();
		Member member  = md.select(id);
		request.setAttribute("member", member);
		return "updateForm";
	}
}