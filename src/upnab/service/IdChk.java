package upnab.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import upnab.dao.MemberDao;
import upnab.model.Member;

public class IdChk implements CommandProcess{
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String member_id = request.getParameter("member_id");
		System.out.println("member_id="+member_id);
		MemberDao md = MemberDao.getInstance();
		
		int result = 0;
		Member member  = md.select(member_id);
		if (member != null) result = 1;
		request.setAttribute("result", result);
		request.setAttribute("member_id", member_id);
		return "idChk";
	}
}