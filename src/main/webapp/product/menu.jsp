<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.project.dto.ProductDTO"%>
<%@ page import="com.project.dao.ProductDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MENU</title>
<link href="./../css/index.css" rel="stylesheet" type="text/css" />
<link href="./../css/product.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%
		ProductDTO product_dto = new ProductDTO();
		ProductDAO product_dao = new ProductDAO();
	
		ArrayList<ProductDTO> listProducts =  product_dao.getProductList();
	%>
	<div class="menu-container">
		<div>
			<% for(int i = 0; i < listProducts.size(); i++){
				ProductDTO product = listProducts.get(i);	
			%>
			
			<div class="menu-box"> 
				<a><img alt="menu" src="./../images/<%=product.getProductIMG() %>"></a>
				<%=product.getProductNAME() %>
			</div>
			<%} %>
		</div>
	</div>
</body>
</html>