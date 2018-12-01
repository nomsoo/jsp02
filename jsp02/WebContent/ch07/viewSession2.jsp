<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Enumeration<String> attr = session.getAttributeNames();
while(attr.hasMoreElements()) { //다음 요소가 있으면
	String key = attr.nextElement(); //다음 요소를 읽음
	Object value = session.getAttribute(key); //Object type
	out.println("변수명:"+key);
	out.println(",값:"+value+"<br>");
}
String id = (String)session.getAttribute("id");
String passwd = (String)session.getAttribute("passwd");
String name = (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
String hp = (String)session.getAttribute("hp");
int age = 0;

if(session.getAttribute("age") != null) {
	age = (int)session.getAttribute("age");
}
double height=0;
if(session.getAttribute("height") != null) {
	height = (double)session.getAttribute("height");
}
%>

id : ${sessionScope.id}<br>
pwd : ${sessionScope.passwd}<br>
이름 : ${sessionScope.name}<br>
이메일 : ${sessionScope.email}<br>
hp : ${sessionScope.hp}<br>
나이 : <%=age %><br>
키 : <%=height %><br>

<a href="deleteSession2.jsp">세션 삭제</a>


</body>
</html>