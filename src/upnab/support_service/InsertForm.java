package upnab.support_service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.MemberDao;
import upnab.model.Member;

public class InsertForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		MemberDao md  = MemberDao.getInstance();
		Member member_id = md.select(request.getParameter("member_id"));
		
		
		request.setAttribute("member_id", member_id);
		return "insertForm";
	}

}
