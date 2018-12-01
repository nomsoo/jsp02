package guestbook.dto;

public class GuestBookDTO {
	private int idx;
	private String name;
	private String email;
	private String passwd;
	private String content;
	private String post_date;
	
	//getter,setter, toString(), 생성자
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPost_date() {
		return post_date;
	}
	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}
	public GuestBookDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GuestBookDTO(int idx, String name, String email, String passwd, String content, String post_date) {
		super();
		this.idx = idx;
		this.name = name;
		this.email = email;
		this.passwd = passwd;
		this.content = content;
		this.post_date = post_date;
	}
	@Override
	public String toString() {
		return "GuestBookDTO [idx=" + idx + ", name=" + name + ", email=" + email + ", passwd=" + passwd + ", content="
				+ content + ", post_date=" + post_date + "]";
	}

}
