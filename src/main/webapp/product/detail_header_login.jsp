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
			<a class="detail-header-menu" href="./../indexFile/index.jsp" >HOME</a>
			<!--  <span class="header-menu" onclick="changeView1(1)" >ABOUT US</span> -->
			<a class="detail-header-menu" href="./../indexFile/index.jsp?contentPage=./../product/menu.jsp" >MENU</a>
			<a class="detail-header-menu" href="./../qanda/list.jsp" >Q&A</a>
			<a class="detail-header-menu" href="./../indexFile/index.jsp?contentPage=../review/reviewList.jsp" >REVIEW</a>
	</div>

	<div class="logo-box">
		<a class="welcom-id" href="../indexFile/index.jsp?contentPage=../cart/myCart.jsp"><span class="welcom-id"><%=session.getAttribute("id") %>님 안녕하세요</span></a>
		<a class="mypage" href="./../mypage/list.jsp">MY PAGE</a>
	</div>
	
</body>
</html>