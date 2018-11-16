package upnab.model;
import java.sql.Date;
public class Board {
	private String member_id;
	private int board_num;
	private Date board_date;
	private String board_content;
	private int board_hit;
	private int board_pickcnt;
	private int board_share;
	private int board_type;
	private int jim;
	
	public int getJim() {
		return jim;
	}
	public void setJim(int jim) {
		this.jim = jim;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public Date getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public int getBoard_hit() {
		return board_hit;
	}
	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}
	public int getBoard_pickcnt() {
		return board_pickcnt;
	}
	public void setBoard_pickcnt(int board_pickcnt) {
		this.board_pickcnt = board_pickcnt;
	}
	public int getBoard_share() {
		return board_share;
	}
	public void setBoard_share(int board_share) {
		this.board_share = board_share;
	}
	public int getBoard_type() {
		return board_type;
	}
	public void setBoard_type(int board_type) {
		this.board_type = board_type;
	}
	
	
	
	
		
}