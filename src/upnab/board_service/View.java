package upnab.board_service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import upnab.dao.BoardDao;
import upnab.dao.MemberDao;
import upnab.model.Board;
import upnab.model.Member;

public class View implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Integer> watched=(ArrayList<Integer>) request.getSession().getAttribute("watched");
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		int status = Integer.parseInt(request.getParameter("status"));

		for(int i=0;i<watched.size();i++) {
			if(watched.get(i).equals(board_num))
				watched.remove(i);
		}
		watched.add(board_num);

		BoardDao bd = BoardDao.getInstance();
		Board board= bd.select(board_num);
		int hit = bd.hit(board_num);

		if(status == 1)
			board.setJim(1);
		else
			board.setJim(0);
		String member_id = (String)request.getSession().getAttribute("member_id");
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(member_id);
	
		
		request.setAttribute("board", board);
		request.setAttribute("member", member);
		return "view";
	}

}
