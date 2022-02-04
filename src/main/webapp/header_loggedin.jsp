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
			<span class="header-aTag" onclick="changeView1(0)" style="cursor: pointer">카페 HOME</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="header-aTag" onclick="changeView1(1)" style="cursor: pointer">카페 소개</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="header-aTag" onclick="changeView1(2)" style="cursor: pointer">메뉴 소개</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="header-aTag" onclick="changeView1(3)" style="cursor: pointer">게시판</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>

	<div class="logo-box">
		<span class="welcom-id"><%=session.getAttribute("id") %>님 안녕하세요</span>
		<a class="mypage" href="./test.jsp">MY PAGE</a>
	</div>
</body>
</html>