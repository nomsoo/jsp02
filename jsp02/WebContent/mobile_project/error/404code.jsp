<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../mobile_project/test2.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<link rel="stylesheet" 
href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script 
src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js">
</script>
</head>
<body>
 <div>
  <div data-role="panel" id="right" data-position="right"> 
				<ul data-role="listview">
				<li><a href="mobile_main.html" data-icon="home">Home</a></li>
				<li><a href="about.html" data-icon="eye">about</a></li>
				<li><a href="mail.html" data-icon="phone">고객센터</a></li>
			 </ul>		
		</div>
 
	<div id="header" data-role="header">
		<h1 id="avatar" style="margin:0.8rem">My Travel Blog</h1>
		 <div data-role="navbar" data-iconpos="top">
		 	 <ul>
				<li><a href="mobile_main.html" data-icon="home">Home</a></li>
				<li><a href="about.html" data-icon="eye">about</a></li>
				<li><a href="mail.html" data-icon="phone">고객센터</a></li>
			 </ul>
			 <a class="ui-link ui-btn-right ui-icon-bars ui-corner-all" data-icon="bars" href="#right" >MENU</a>
		</div>
	</div>
	<div data-role="content">
	</div>
	
	<div data-role="footer">
		<h4><p>&copy; 저작권 or 출저: <a href="http://google.com">Google</a>. Demo Images: <a href="http://unsplash.com">Unsplash</a>.</p></h4>
	</div>
</div>
</body>
</html>