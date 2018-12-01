<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- import문 모두 필요없다 -->  
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>

<script type="text/javascript">
 function view(userid){
	//dto의 userid값을 가져와 아래폼태그에 value로 전달 및 submit전송
	 document.form1.userid.value = userid;
	 document.form1.submit();
	 //submit()전송시 가상uri인 "/jsp02/member_servlet/view.do"로
	 //컨트롤러에 request요청
 }

</script>

</head>
<body>

등록된 회원수 : ${map.count}명
<table border="1" width="600px">
 <tr>
  <th>이름</th>
  <th>아이디</th>
  <th>가입일자</th>
  <th>이메일</th>
  <th>핸드폰</th>
 </tr>
<c:forEach var="dto" items="${map.list}"> 
 <tr>
 <!-- 이름에 하이퍼링크를 걸어 클릭시 view()함수 호출 
 이때 dto의 userid값을 가져와 view()함수의 매개변수로 씀-->
 
 <!-- 아래 ${dto.userid }에서 dto에 있는 userid라는 private
 멤버변수를 호출하는게 아니라 내부적으로 getter메소인
 getUserid()가 자동 호출되는 메카니즘이 되어있다.
 앞으로 이처럼 함축적 내용이 있는 메소드가 많이 나온다.-->
   <td><a href="#" onclick="view('${dto.userid}')">
  ${dto.name}</a></td>
  <td>${dto.userid }</td>
  <td>${dto.join_date}</td>
  <td>${dto.email}</td>
  <td>${dto.hp}</td>
 </tr>
</c:forEach>
</table>
<form name="form1" method="post" 
action="/jsp02/member_servlet/view.do">
  <input type="hidden" name="userid">
</form>

</body>
</html>