<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
String name=request.getParameter("name");
if(name==null){//null일 때 대체할 값으로 변경해야 함.
	name="";
}
%> --%>

<!-- form태그에 action="url"을 생략하면 자신의 페이지가 
호출되어 실행된다. -->

<!-- EL을 활용한 방식 : null처리를 별도를 할 필요가 없다.-->
<form method="get">
  이름 : <input name="name"  value="${param.name}">
  <input type="submit" value="확인">
</form>
<%-- 이름 : <%=request.getParameter("name") %> --%>
이름 : ${param.name }
</body>
</html>