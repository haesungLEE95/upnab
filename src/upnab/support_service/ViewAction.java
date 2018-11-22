package upnab.support_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.MemberDao;
import upnab.dao.SupportDao;
import upnab.model.Member;
import upnab.model.Support;



public class ViewAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int support_num = Integer.parseInt(request.getParameter("support_num"));

		String member_id = (String)request.getSession().getAttribute("member_id");
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(member_id);
		SupportDao sd = SupportDao.getInstance(); 
		Support support = sd.select(support_num);

		request.setAttribute("support", support);
		request.setAttribute("member", member);
		return "view";
	}

}
