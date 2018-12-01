package mobile;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/mobile_servlet/*")
public class MobileController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		String uri=request.getRequestURI();
		String context=request.getContextPath();

		MobileDAO dao=new MobileDAO();

		if(uri.indexOf("list.do") != -1) {
			System.out.println("list.do호출...");
			System.out.println(request.getRequestURI());
			System.out.println(uri.indexOf("list.do"));

			
			Map<String,Object> map=new HashMap<>();
			List<MobileDTO> list=dao.mobileList();
			map.put("list", list);
			map.put("count", list.size());

			
			request.setAttribute("map", map);
			String page="/mobile_project/mobile_list.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);//포워딩
			
		}else if(uri.indexOf("manager_join.do") != -1){//회원등록
			System.out.println("manager_join 접속");
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String hp=request.getParameter("hp");
			MobileDTO dto=new MobileDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setHp(hp);
			dao.insert(dto);
			
		}else if(uri.indexOf("view.do") != -1){//회원수정폼처리
			String userid=request.getParameter("userid");
			MobileDTO dto=dao.mobileDetail(userid);
			request.setAttribute("dto", dto);//key, value로 dto저장
			//결과값을 아래페이지로 넘김
			String page="/mobile_project/mobile_view.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		}else if(uri.indexOf("update.do") != -1){//회원수정처리
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String hp=request.getParameter("hp");
			MobileDTO dto=new MobileDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setHp(hp);
			//레코드 수정 처리- update()호출 및 실행 후
			dao.update(dto);
			//아래 페이지로 이동
			response.sendRedirect(context+"/mobile_project/manager.jsp");
		} else if(uri.indexOf("delete.do") != -1) {
			
			String userid=request.getParameter("userid");
			//레코드 삭제 처리 메소드 호출
			dao.delete(userid);
			//삭제 처리 후 페이지 이동
			response.sendRedirect(context+"/mobile_project/manager.jsp");
			
		}else if(uri.indexOf("oracle_join.do") != -1) {
			System.out.println("oracle_join 접속");
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String hp=request.getParameter("hp");
			MobileDTO dto=new MobileDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setHp(hp);
			dao.insertBcrypt(dto);
			
			String page="/mobile_project/oracle_login.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		
		} else if(uri.indexOf("oracle_login.do") != -1) {
			System.out.println("oracle_login 접속");
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			System.out.println("아이디:"+userid);
			System.out.println("패스워드:"+passwd);
			MobileDTO dto=new MobileDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			String page = "";
			String result=dao.loginCheckBcrypt(dto);
			if(result != "로그인 실패"){
				 page="/mobile_project/mobile_main.html";
				
			}else {
				 page="/mobile_project/oracle_login.jsp";
			}			
			
			System.out.println(result);
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
