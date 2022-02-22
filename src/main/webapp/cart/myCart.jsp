<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.project.dto.*"%>
<%@ page import="com.project.dao.*"%>
<%@ page import="java.util.*"%>

<% 
	request.setCharacterEncoding("UTF-8");
	String user_id = (String)session.getAttribute("id");
	CartDAO cart_dao = new CartDAO();
	List<CartDTO> list = new ArrayList<CartDTO>();
	
	list = cart_dao.cartList(user_id);		// DB review Table의 데이터를 list로 가져오기
	request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="list" items="${list}">
				<tr height="40" style="cursor: pointer;"onclick="viewReview(${list.reviewID})" border-bottom="1px solid #6d6d6d">
					<td>${list.reviewID}</td>
					<td>${list.productName}</td>
					<td>${list.grade}</td>
					<td>${list.userID}</td>
					<td>${list.date}</td>
				</tr>
				<% idx--;%>
				</c:forEach>
</body>
</html>