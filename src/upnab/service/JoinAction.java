package upnab.service;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.MemberDao;
import upnab.model.Member;

public class JoinAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try{request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		String member_id = request.getParameter("member_id");
		String member_password = request.getParameter("member_password");
		String member_name = request.getParameter("member_name");
		int member_tel = Integer.parseInt(request.getParameter("member_tel"));
		String member_email = request.getParameter("member_email"); 
		Member member = new Member();
		member.setMember_id(member_id);
		member.setMember_password(member_password);
		member.setMember_name(member_name);
		member.setMember_tel(member_tel);
		member.setMember_email(member_email);
		
		MemberDao md = MemberDao.getInstance();
		int result = md.insert(member);
		request.setAttribute("result", result);
		return "join";
	}
}