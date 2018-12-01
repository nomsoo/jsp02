package page;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/page_servlet/*") //url mapping
public class PageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException,
	IOException {
		String url=request.getRequestURI();
		EmpDAO dao=new EmpDAO();
		if(url.indexOf("list.do") != -1){
			int count=dao.empCount(); //레코드 갯수 계산
			int curPage=1; //null일때 기본값 1을 줌
			if(request.getParameter("curPage") != null){//현재페이지가 널이 아니면
				curPage = 
				Integer.parseInt(request.getParameter("curPage"));
				//getParameter로 받아오는 값이 Object타입이기 때문에 int로 변환
			}
			Pager pager=new Pager(count,curPage);//(레코드갯수, 페이지)
			int start=pager.getPageBegin();//getter를 통해 start값 가져오기
			int end=pager.getPageEnd();//getter를 통해 end값 가져오기
			List<EmpDTO> list=dao.empList(start,end);//dao의 empList
			//메서드를 통해 리턴값을 받아와서 list변수에 저장
			request.setAttribute("list", list);//list를 setAttribute로 저장
			//페이지 네비게이션에 필요한 정보 전달
			request.setAttribute("page", pager);//pager를 setAttribute로 저장
			String page="/page/list.jsp";//위 list와 page저장된값을 list.jsp로 보냄
			RequestDispatcher rd
			=request.getRequestDispatcher(page);
			rd.forward(request, response);//forward방식으로 list.jsp에 전달
			//(주소는 그대로, 화면만 전환)
		
		}
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}//doPost

}
