<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
	<div class="text-box">
		<span class="header-menu" onclick="changeView1(0)">HOME</span>
		<span class="header-menu" onclick="changeView1(1)">ABOUT US</span>
		<span class="header-menu" onclick="changeView1(2)">MENU</span>
		<span class="header-menu" onclick="changeView1(4)" >Q&A</span>	
		<span class="header-menu" onclick="changeView1(5)" >REVIEW</span>	
	</div>
	
	<div class="logo-box">
		<a class="cart" href="./../login/login.jsp"><img alt="shopping cart" src="./../images/shopping_cart.png" class="cart-log"></a> 
		<a class="man" href="./../login/login.jsp"><img alt="ma
		n" src="./../images/man.png" class="man-log"></a>
	</div>
</body>
</html>