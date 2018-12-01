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
  <table>
    <tr>
      <td>번호</td>
      <td>이름</td>
      <td>나이</td>
      <td>주소</td>
      <td>전화번호</td>
    </tr>
    <tr>
      <td>1</td>
      <td>kim</td>
      <td>20</td>
      <td>서울시</td>
      <td>010-111-5555</td>
    </tr>
    <tr>
      <td>2</td>
      <td>park</td>
      <td>30</td>
      <td>인천시</td>
      <td>010-222-5555</td>
    </tr>
    <tr>
      <td>3</td>
      <td>lee</td>
      <td>22</td>
      <td>대전시</td>
      <td>010-456-5467</td>
    </tr>
  </table>

<!-- 양쪽에 약간의 여백이 생기며 반응형 -->  
<div class="container">
  <table class="table table-striped">
    <tr>
      <td>번호</td>
      <td>이름</td>
      <td>나이</td>
      <td>주소</td>
      <td>전화번호</td>
    </tr>
    <tr>
      <td>1</td>
      <td>kim</td>
      <td>20</td>
      <td>서울시</td>
      <td>010-111-5555</td>
    </tr>
    <tr>
      <td>2</td>
      <td>park</td>
      <td>30</td>
      <td>인천시</td>
      <td>010-222-5555</td>
    </tr>
    <tr>
      <td>3</td>
      <td>lee</td>
      <td>22</td>
      <td>대전시</td>
      <td>010-456-5467</td>
    </tr>  
  </table>

</div>  

<div class="container">
<!-- hover는 마우스가 올라갈때 음영처리된다. -->
  <table class="table table-hover">
    <tr>
      <td>번호</td> 
      <td>이름</td>
      <td>나이</td>
      <td>주소</td>
      <td>전화번호</td>
    </tr>
    <tr>
      <td>1</td>
      <td>kim</td>
      <td>20</td>
      <td>서울시</td>
      <td>010-111-5555</td>
    </tr>
    <tr>
      <td>2</td>
      <td>park</td>
      <td>30</td>
      <td>인천시</td>
      <td>010-222-5555</td>
    </tr>
    <tr>
      <td>3</td>
      <td>lee</td>
      <td>22</td>
      <td>대전시</td>
      <td>010-456-5467</td>
    </tr>  
  </table>
</div>  

<a class="btn btn-default pull-right">글쓰기</a>
<div class="text-center">
  <ul class="pagination">
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
  </ul>
</div>
</body>
</html>