<!-- 인나현 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.project.dto.ProductDTO"%>
<%@ page import="com.project.dao.ProductDAO"%>
<%
ProductDAO product_dao = new ProductDAO();

String product_id = request.getParameter("product_id");
ProductDTO product_dto = product_dao.getProduct(Integer.parseInt(product_id));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu 상세페이지</title>
<link href="./../css/index.css" rel="stylesheet" type="text/css" />
<link href="./../css/product.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="./../js/product.js"></script>
</head>
<body>

	<header class="detail-header">
		<div class="header-nav">
			<% 
				String id = (String)session.getAttribute("id");
				if(id == null) {
			%>
			<jsp:include page="detail_header_logout.jsp" />
			<%} else {%>
			<jsp:include page="detail_header_login.jsp" />
			<%}%>
		</div>
	</header>
	
	<div class="menu-detail-container">
		<form class="detail-form" action="./cart_insert_action.jsp" method="post">
		
			<div class="menu-detail-img-box">
				<img class="menu-img" alt="menu" src="./../images/<%=product_dto.getProductIMG() %>">
			</div>
			
			<div class="menu-detail-info-box">
				<div id="menu-detail-name"><%=product_dto.getProductNAME() %>
					<hr class="hr_1">
				</div>
				<div class="detail-price"><%=product_dto.getProductPRICE() %>원</div>
				<div class="detail-intro"><%=product_dto.getProductINTRO() %></div>
				<div class="detail-quantity">
					수량 선택: <input class="input-number" type="number" min="0" max="<%=product_dto.getProductSTOCK()%>" name="quantity">
					<hr class="hr_2">
				</div>
				<div class="detail-btn">
					<% 
						if(id == null) {
					%>
					<input class="detail-submit" type="button" value="CART" onclick="location.href='./../login/login.jsp';">
					<%} else {%>
					<input class="detail-submit" type="submit" value="CART">
					<%}%>
				</div>
			</div>
		</form>
		
		

	</div>
	
</body>
</html>