package upnab.board_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import upnab.dao.BoardDao;
import upnab.dao.MemberDao;
import upnab.dao.PickDao;
import upnab.model.Board;
import upnab.model.Member;
import upnab.model.Pick;

public class PickAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String member_id =request.getParameter("member_id");
		
		PickDao pd = PickDao.getInstance();
		Pick pick = pd.select(board_num,member_id);
		
		BoardDao bd = BoardDao.getInstance();
		Board board = bd.select(board_num);
		/*
		select에서 pick테이블 검사 있으면 찜해제(pick테이블 삭제)1
		없으면 찜(pick 테이블에 추가)0
		*/
		int result=0;
		int status;
		if(pick==null) { //찜 할거
			status=1;
			result = pd.insert(board_num,member_id);
			int pickcnt = bd.pickup(board_num);
			board.setJim(1);
			System.out.println(board.getJim());
		} else { // 찜 삭제 할거
			status=0;
			result = pd.delete(board_num,member_id);
			int pickcnt = bd.pickdown(board_num);
			board.setJim(0);
		}
		request.setAttribute("result", result);
		request.setAttribute("status", status);
		
		return "pick";
	}

}
