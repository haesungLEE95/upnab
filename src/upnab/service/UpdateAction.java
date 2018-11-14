package upnab.service;
import java.io.File;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import upnab.dao.MemberDao;
import upnab.model.Member;

public class UpdateAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try{request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		String real = request.getSession().getServletContext()
				.getRealPath("/prof_imgs");
		int result = 0;
		int maxSize = 1024 * 1024 * 10;
		MultipartRequest mr = null;
		try{ mr = new MultipartRequest(request,real,maxSize,"utf-8",new DefaultFileRenamePolicy());
		} catch (Exception e) { 	}
		String fileName = mr.getFilesystemName("member_img");
		System.out.println(" ori filename="+fileName);
		String member_id = mr.getParameter("member_id");		
		File file = new File(real+"/"+fileName);
		System.out.println("filename = "+file.getName());
		File file1 = new File(real+"/"+member_id+"prof");
		if	(fileName != null) {	if(file1.exists()) file1.delete();}
		file.renameTo(new File(real+"/"+member_id+"prof"));		
		System.out.println("filename = "+file.getName());
		String member_password = mr.getParameter("member_password");
		String member_name = mr.getParameter("member_name");
		String member_email = mr.getParameter("member_email");
		int member_tel = Integer.parseInt(mr.getParameter("member_tel"));
		// String member_img = mr.getParameter("member_img");
		
		Member member = new Member();
		member.setMember_id(member_id);
		member.setMember_password(member_password);
		member.setMember_name(member_name);
		member.setMember_email(member_email);
		member.setMember_tel(member_tel);
		member.setMember_img(member_id+"prof");
		System.out.println("db file = "+member.getMember_img());
		MemberDao md = MemberDao.getInstance();
		result = md.update(member);
		request.setAttribute("result", result);
		return "update";
	}
}