<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>Insert title here</title>
</head>
<body>
	<div class="text-box">
		<span class="header-menu" onclick="changeView1(0)">카페 HOME</span>
		<span class="header-menu" onclick="changeView1(1)">카페 소개</span>
		<span class="header-menu" onclick="changeView1(2)">메뉴 소개</span>
		<span class="header-menu" onclick="changeView1(3)">게시판</span>
	</div>
	
	<div class="logo-box">
		<a class="cart" href="./test.jsp"><img alt="shopping cart" src="./images/shopping_cart.png" class="cart-log"></a> 
		<a class="man" href="./login/member.jsp"><img alt="ma
		n" src="./images/man.png" class="man-log"></a>
	</div>
</body>
</html>