package guestbook;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import guestbook.dao.GuestBookDAO;
import guestbook.dto.GuestBookDTO;


@WebServlet("/guestbook_servlet/*")//url pattern지정, 슬래쉬 주의
public class GuestBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    //get방식
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException,
	IOException {
		
		//getRequestURI():/jsp02/memo/memo.jsp
		//getRequestURL():http://localhost/jsp02/memo/memo.jsp
		String uri=request.getRequestURI();//요청한 주소
		System.out.println(uri);
		GuestBookDAO dao=new GuestBookDAO();
		if(uri.indexOf("list.do") != -1) {
			//검색옵션과 검색키워드
			String searchkey=request.getParameter("searchkey");
			String search=request.getParameter("search");
			
			if(searchkey==null) searchkey="name";
			if(search==null) search="";
			
			System.out.println("searchkey:"+searchkey);
			System.out.println("search:"+search);
			
			List<GuestBookDTO> items
			=dao.getList(searchkey,search);//방명록 리스트
			request.setAttribute("list", items);
			request.setAttribute("count", items.size());//레코드갯수
			
			request.setAttribute("searchkey", searchkey);
			request.setAttribute("search", search);
			
			String page="/guestbook/list.jsp";
			RequestDispatcher rd
			=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("insert.do") != -1) {
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String passwd=request.getParameter("passwd");
			String content=request.getParameter("content");
			GuestBookDTO dto=new GuestBookDTO();
			dto.setName(name);
			dto.setEmail(email);
			dto.setPasswd(passwd);
			dto.setContent(content);
			dao.gbInsert(dto); //dao에 레코드 추가 요청
			//방명록 목록 갱신
			String url="/guestbook_servlet/list.do";
			response.sendRedirect(request.getContextPath()+url);
		}else if(uri.indexOf("passwd_check.do") != -1){
			int idx=Integer.parseInt(request.getParameter("idx"));
			String passwd=request.getParameter("passwd");
			System.out.println("게시물번호:"+idx);
			System.out.println("사용자가 입력한 비번:"+passwd);
			
			boolean result=dao.passwdCheck(idx, passwd);
			//비번이 맞으면 true 틀리면 flase 값이 리턴됨
			System.out.println("결과:"+result);
			String url="";
			if(result){
				url="/guestbook/edit.jsp";//수정용 출력페이지
				//게시물 내용을 dto로 리턴받음
				GuestBookDTO dto=dao.gbDetail(idx);
				//request 영역에 저장
				request.setAttribute("dto", dto);
			}else{
				url="/guestbook/list.do";
			}
			//화면이동
			RequestDispatcher rd
			=request.getRequestDispatcher(url);
			rd.forward(request, response);
		}else if(uri.indexOf("update.do") != -1){
			int idx=Integer.parseInt(request.getParameter("idx"));
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String passwd=request.getParameter("passwd");
			String content=request.getParameter("content");
			GuestBookDTO dto=new GuestBookDTO();
			dto.setIdx(idx);
			dto.setName(name);
			dto.setEmail(email);
			dto.setPasswd(passwd);
			dto.setContent(content);
			dao.gbUpdate(dto);
			//처리가 끝난 후 list든 edit으로든 정해서 가야한다.
			String url="/guestbook_servlet/list.do";
			response.sendRedirect(request.getContextPath()+url);
		}else if(uri.indexOf("delete.do") != -1){
			int idx=Integer.parseInt(request.getParameter("idx"));
			dao.gbDelete(idx);
			String url="/guestbook_servlet/list.do";
			response.sendRedirect(request.getContextPath()+url);
		}
	}

    //post방식
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
