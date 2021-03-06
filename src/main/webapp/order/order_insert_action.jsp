<!-- 인나현 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.project.dto.*" %>
<%@ page import="com.project.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	OrderDAO order_dao = new OrderDAO();
	OrderDTO order_dto = new OrderDTO();
	OrderDetailDTO order_detail_dto = new OrderDetailDTO();
	
	String user_id = (String)session.getAttribute("id");
	int order_id = order_dao.getNext();
	String order_date = order_dao.getDate();
	String menu_qty = request.getParameter("menu_qty");
	int qty = Integer.parseInt(menu_qty);
	int product_id =Integer.parseInt(request.getParameter("product_id"));
	
	order_dto.setOrderID(order_id);
	order_dto.setUserID(user_id);
	order_dto.setOrderDate(order_date);

	order_dao.insertOrder(order_dto);
	
	order_detail_dto.setUserID(user_id);
	order_detail_dto.setOrderID(order_id);
	order_detail_dto.setProductID(product_id);
	order_detail_dto.setDetailNUM(qty);
	order_detail_dto.setWriteREVIEW(0);
	
	order_dao.insertOrderDetail(order_detail_dto);
%>

<script>
      	alert("곧 제품을 준비해 드리겠습니다:)");
      	location.href="../indexFile/index.jsp?contentPage=./../product/menu.jsp";
</script>
</body>
</html>