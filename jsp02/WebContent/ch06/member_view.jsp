<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	//id가 btnUpdate인 태그를 클릭하면
	$("#btnUpdate").click(function(){
		//폼 데이터를 제출할 주소(uri)-서블릿(컨트롤러) 매핑주소와 맞아야함.
		document.form1.action="/jsp02/member_servlet/update.do";
		//폼 데이터를 서버에 제출
		document.form1.submit();
	});
	//id가 btnDelete인 태그를 클릭하면
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){//삭제 여부 재확인용 alert창
			//폼 데이터를 제출할 주소(uri)-서블릿(컨트롤러) 매핑주소와 맞아야함.
			document.form1.action="/jsp02/member_servlet/delete.do";
			//폼 데이터를 서버에 제출
			document.form1.submit();
		}
	});
});

</script>

</head>
<body>
<%
//getAttribute()는 Object로 데이터를 받기 때문에
//처리 변수의 데이터타입에 맞게 형변환 해줌
MemberDTO dto=(MemberDTO)request.getAttribute("dto");
%>
<form name="form1" method="post">
<table border="1">
 <tr>
  <td>아이디</td>
  <td><%=dto.getUserid() %></td>
 </tr>
 <tr>
  <td>비밀번호</td>
  <td><input type="password" name="passwd" 
       value="<%=dto.getPasswd() %>"></td>
 </tr>
 <tr>
  <td>이름</td>
  <td><input name="name" value="<%=dto.getName()%>"></td>
 </tr>
 <tr>
  <td>회원가입일자</td>
  <td><%=dto.getJoin_date()%></td>
 </tr> 
 <tr>
  <td>이메일</td>
  <td><input name="email" value="<%=dto.getEmail()%>"></td>
 </tr> 
 <tr>
  <td>휴대폰</td>
  <td><input name="hp" value="<%=dto.getHp()%>"></td>
 </tr> 
 <tr>
 <!-- primary key인 userid로 조건절로 써서 데이터 수정을 해야하기 때문에 
 dto에서 얻은 id의 값을 hidden타입으로 해당 uri로 request한다.  -->
  <td colspan="2" align="center">
    <input type="hidden" name="userid" 
    value="<%=dto.getUserid()%>">
    <button type="button" id="btnUpdate">수정</button>
    <button type="button" id="btnDelete">삭제</button>
  </td>
 </tr>
</table>
</form>
</body>
</html>