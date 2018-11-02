package upnab.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import upnab.model.Member;
import upnab.dao.MemberDao;

public class LoginAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String member_id =request.getParameter("member_id");
		String password = request.getParameter("member_password");
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(member_id);
		int result=0;
		if (member == null || member.getMember_inout().equals("y")) {
			result=-1;
		} else {
			if (member.getMember_password().equals(password)) {
				HttpSession session=request.getSession();
				session.setAttribute("member_id", member_id);
				result=1;
			} else result=0;
		}
		request.setAttribute("result", result);
		return "login";
	}

}
