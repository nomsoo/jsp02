package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/session_servlet/*")
public class SessionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		//사용자가 요청한 주소
		String url=request.getRequestURI();
		System.out.println(url);
		MemberDAO dao=new MemberDAO();
		if(url.indexOf("login.do") != -1){//로그인 처리
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			MemberDTO dto=new MemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			String result=dao.loginCheck(dto);
			System.out.println(result);
			String page="/ch07/session_login.jsp";
			if(!result.equals("로그인 실패")){//로그인 성공
				//세션 객체 생성
				HttpSession session=request.getSession();
				session.setAttribute("userid", userid);
				session.setAttribute("message", result);
				page="/ch07/main.jsp";
				response.sendRedirect(request.getContextPath()+page);
			}else{//로그인 실패
				response.sendRedirect(
						request.getContextPath()+page+"?message=error");
	
			}
			
		}else if(url.indexOf("logout.do") != -1){//로그아웃 처리
			//세션객체 생성
			HttpSession session = request.getSession();
			//세션을 비움(초기화시킴)
			session.invalidate();
			//로그인 페이지로 이동
			String page=request.getContextPath()
					+"/ch07/session_login.jsp?message=logout";
			response.sendRedirect(page);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
