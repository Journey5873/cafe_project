<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align="center" class="text-box">
			<span class="header-menu" onclick="changeView1(0)" >HOME</span>
			<span class="header-menu" onclick="changeView1(1)" >ABOUT US</span>
			<span class="header-menu" onclick="changeView1(2)" >MENU</span>
			<span class="header-menu" onclick="changeView1(3)" >NOTICE BOARD</span>
	</div>

	<div class="logo-box">
		<span class="welcom-id"><%=session.getAttribute("id") %>님 안녕하세요</span>
		<a class="mypage" href="./test.jsp">MY PAGE</a>
	</div>
</body>
</html>