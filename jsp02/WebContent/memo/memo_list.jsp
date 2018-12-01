<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<table border="1" width="500px">
 <tr>
   <th>번호</th>  <!-- Table Header 제목셀 -->
   <th>이름</th>
   <th width="50%">메모</th>
   <th>날짜</th>
 </tr>
 <!-- var="개별값" items="리스트" -->
 <c:forEach var="row" items="${requestScope.list}">
 <tr>
   <td>${row.idx}</td>
   <td>${row.writer}</td>
	<td><a href="${path}/memo_servlet/view.do?idx=${row.idx}">
${row.memo}</a></td>
   <td>${row.post_date}</td>
 </tr>
 </c:forEach>

</table>


</body>
</html>