<!-- 인나현 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>

	<div align="center" class="text-box">
			<span class="header-menu" onclick="changeView1(0)" >HOME</span>
			<!--  <span class="header-menu" onclick="changeView1(1)" >ABOUT US</span> -->
			<span class="header-menu" onclick="changeView1(2)" ><a id="menu-tag">MENU</a></span>
			<span class="header-menu" onclick="changeView1(3)" >Q&A</span>
			<span class="header-menu" onclick="changeView1(5)" >REVIEW</span>	
	</div>

	<div class="logo-box">
		<a class="welcom-id" href="../indexFile/index.jsp?contentPage=../cart/myCart.jsp"><span class="welcom-id"><%=session.getAttribute("id") %>님 안녕하세요</span></a>
		<a class="mypage" href="./../mypage/mypage.jsp">MY PAGE</a>
	</div>
	
</body>
</html>