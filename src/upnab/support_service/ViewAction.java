package upnab.support_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.SupportDao;
import upnab.model.Support;



public class ViewAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int support_num = Integer.parseInt(request.getParameter("support_num"));

		SupportDao sd = SupportDao.getInstance(); 
		Support support = sd.select(support_num);

		request.setAttribute("support", support);
		return "view";
	}

}
