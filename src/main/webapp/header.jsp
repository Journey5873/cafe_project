<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Header</title>
</head>
<link href="./css/index.css" rel="stylesheet" type="text/css" />
<body>
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
	
	<!-- �α��� ��ȭ�� ���� ����������, ��ٱ��� �ڵ� �ְ� -->
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