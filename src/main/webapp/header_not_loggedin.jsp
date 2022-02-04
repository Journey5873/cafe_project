<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		<a class="cart" href="./test.jsp"><img alt="shopping cart" src="./images/shopping_cart.png" class="cart-log"></a> 
		<a class="man" href="./test.jsp"><img alt="man" src="./images/man.png" class="man-log"></a>
	</div>
</body>
</html>