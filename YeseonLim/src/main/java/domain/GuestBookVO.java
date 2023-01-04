package domain;

public class GuestBookVO {
	private int gno;
	private String writer;
	private String content;
	private String reg_date;
	
	public GuestBookVO() {}
	
	//posting
	public GuestBookVO(String writer, String content) {
		this.writer= writer;
		this.content= content;
	}
	

	public GuestBookVO(int gno, String writer, String content, String reg_date) {
		this.gno = gno;
		this.writer = writer;
		this.content = content;
		this.reg_date = reg_date;
	}

	public int getGno() {
		return gno;
	}

	public void setGno(int gno) {
		this.gno = gno;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
