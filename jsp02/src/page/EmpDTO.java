package page;

public class EmpDTO {
	private int empno;
	private String ename;
	
	//getter,setter, toString, 생성자
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public EmpDTO() {
	}
	public EmpDTO(int empno, String ename) {
		super();
		this.empno = empno;
		this.ename = ename;
	}
	@Override
	public String toString() {
		return "EmpDTO [empno=" + empno + ", ename=" + ename + "]";
	}

}
