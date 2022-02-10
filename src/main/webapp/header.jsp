<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Header</title>
<script>
		function changeView1(value){
			if(value=="0")
				location.href="index.jsp?contentPage=firstview.jsp";
			else if(value=="1")
				location.href="index.jsp?contentPage=test.jsp";
			else if(value=="2")
				location.href="index.jsp?contentPage=test.jsp";
			else if(value=="3")
				location.href="index.jsp?contentPage=test.jsp";
		}

</script>
</head>
<body>
	<!-- 로그인 변화에 따른 마이페이지, 장바구니 코드 넣고 -->
	<header class="header">
		<% 
		String id = (String)session.getAttribute("id");
		if(id == null) {
		%>
		<jsp:include page="header_not_loggedin.jsp" />
		<%} else {%>
		<jsp:include page="header_loggedin.jsp" />
		<%}%> 
	</header>
</body>
</html>