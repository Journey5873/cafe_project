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
			<span class="header-aTag" onclick="changeView1(0)" style="cursor: pointer">ī�� HOME</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="header-aTag" onclick="changeView1(1)" style="cursor: pointer">ī�� �Ұ�</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="header-aTag" onclick="changeView1(2)" style="cursor: pointer">�޴� �Ұ�</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="header-aTag" onclick="changeView1(3)" style="cursor: pointer">�Խ���</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>

	<div class="logo-box">
		<span class="welcom-id"><%=session.getAttribute("id") %>�� �ȳ��ϼ���</span>
		<a class="mypage" href="./test.jsp">MY PAGE</a>
	</div>
</body>
</html>