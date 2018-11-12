package upnab.support_service;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao;
import upnab.dao.CateRelDao;
import upnab.dao.SupportDao;
import upnab.model.Board;
import upnab.model.Support;

public class InsertAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try{ request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		
		System.out.println("insertAction : "+request.getParameter("member_id"));
		System.out.println("insertAction : "+request.getParameter("support_title"));
		System.out.println("insertAction : "+request.getParameter("support_content"));
		Support support = new Support();
		support.setMember_id(request.getParameter("member_id"));
		support.setSupport_title(request.getParameter("support_title"));
		support.setSupport_content(request.getParameter("support_content"));
		
		SupportDao sd = SupportDao.getInstance();
		int result  = sd.insert(support);
		request.setAttribute("result", result);
		return "insert";
	}

}
