<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.project.dto.ProductDTO"%>
<%@ page import="com.project.dao.ProductDAO" %>
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
</head>
<body>
	<jsp:include page="./../index/index_header.jsp"/>
	
	<div class="menu-container">
	
	</div>
</body>
</html>