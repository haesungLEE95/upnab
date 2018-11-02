package upnab.board_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.service.CommandProcess;

public class ListAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return "list";
	}

}
