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
			<span class="header-menu" onclick="changeView1(0)" style="cursor: pointer; padding-right: 30px">ī�� HOME</span>
			<span class="header-menu" onclick="changeView1(1)" style="cursor: pointer; padding-right: 30px">ī�� �Ұ�</span>
			<span class="header-menu" onclick="changeView1(2)" style="cursor: pointer; padding-right: 30px">�޴� �Ұ�</span>
			<span class="header-menu" onclick="changeView1(3)" style="cursor: pointer; padding-right: 30px">�Խ���</span>
	</div>

	<div class="logo-box">
		<span class="welcom-id"><%=session.getAttribute("id") %>�� �ȳ��ϼ���</span>
		<a class="mypage" href="./test.jsp">MY PAGE</a>
	</div>
</body>
</html>