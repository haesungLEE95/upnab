package upnab.board_service;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.renderable.ParameterBlock;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import upnab.dao.BoardDao;
import upnab.dao.CateRelDao;
import upnab.model.Board;
public class InsertAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try{ request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		//board.setNum(Integer.parseInt(request.getParameter("num")));
		
		int result = 0;
		int maxSize = 1024 * 1024 * 20;
		String real = request.getSession().getServletContext()
				.getRealPath("/upload");
//		String thumbPath = request.getSession().getServletContext()
//				.getRealPath("/thumb");
	
		MultipartRequest mr = null;
		try{ mr = new MultipartRequest(request,real,maxSize,"utf-8",new DefaultFileRenamePolicy());
		} catch (Exception e) { 	}
		Board board = new Board();
		board.setMember_id(mr.getParameter("member_id"));
		String fileName = mr.getFilesystemName("board_content");
		File file = new File(real+"/"+fileName);
		
		board.setBoard_content(fileName);
		
		if(mr.getParameter("board_share")==null) {
			board.setBoard_share(0);
		}else {
			board.setBoard_share(1);
		}
		if(mr.getParameter("board_type")==null) {
			board.setBoard_type(0);
			
			
			ParameterBlock pb=new ParameterBlock(); 
			// 서버에 저장된 원본파일의 경로로 파라메터블록에 추가 
			// 위에서 가져온 파일이름을 받아서 이미지패스에 지정한 폴더 
			// 속에 파일을 만들어줌 
			pb.add(real+"/"+fileName); 
			// 자이로 파라메터블록을 로드하여 RenderedOp 에 삽입 
			RenderedOp rOp=JAI.create("fileload",pb); 
			// 불러온 이미지를 BuffedImage에 담는다. 
			BufferedImage bi= rOp.getAsBufferedImage(); 
			// thumb라는 이미지 버퍼를 생성, 버퍼의 사이즈는 100*100으로 설정.
			BufferedImage thumb=new BufferedImage(150,150,
					BufferedImage.TYPE_INT_RGB); 	
			Graphics2D g=thumb.createGraphics(); 
			//버퍼사이즈 100*100으로 맞춰 그리자
			g.drawImage(bi,0,0,150,150,null);
			/*출력할 위치와 파일이름을 설정하고 섬네일 이미지를 생성한다. 
			   저장하는 타입을 jpg로 설정.*/ 
			//그 변형한 파일을 파일명 변경시킨다 
			File file1 = new File(real+"/sm_"+fileName); 
			//버퍼공간의 영역에 변경한 이미지 파일명을 불러와 jpg속성으로 출력시킨다 
			try {
				ImageIO.write(thumb,"jpg",file1);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
		}else {
			board.setBoard_type(1);
		}
		BoardDao bd = BoardDao.getInstance();
		result  = bd.insert(board);
		int board_num = board.getBoard_num();
		file.renameTo(new File(real+"/"+board_num+fileName));		
		
		int rt = 0;
		String[] pick = mr.getParameterValues("category_pick");
		System.out.println("pick 길이 : "+pick.length);
		for (int i = 0; i < pick.length; i++) {
			CateRelDao cd = CateRelDao.getInstance();
			rt = cd.insert(Integer.parseInt(pick[i]),board_num);
		}
		
		request.setAttribute("result", result);
		request.setAttribute("rt", rt);
		return "insert";
	}

}
