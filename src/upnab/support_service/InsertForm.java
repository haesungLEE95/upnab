package upnab.support_service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.MemberDao;
import upnab.model.Member;

public class InsertForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("InsertForm.JAVA");
		System.out.println("member id : "+request.getParameter("member_id"));
		
/*		MemberDao md  = MemberDao.getInstance();
		Member member = md.select(request.getParameter("member_id"));*/
		
		
		request.setAttribute("member_id", request.getParameter("member_id"));
		return "insertForm";
	}

}
