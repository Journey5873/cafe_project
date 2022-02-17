<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.project.dto.ProductDTO"%>
<%@ page import="com.project.dao.ProductDAO" %>
<%
    String contentPage=request.getParameter("contentPage");
	if(contentPage==null)
		contentPage="menu_firstview.jsp";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MENU</title>
<link href="./../css/index.css" rel="stylesheet" type="text/css" />
<link href="./../css/product.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="./../js/product.js"></script>
</head>
<body>			
	<%
		ProductDTO product_dto = new ProductDTO();
		ProductDAO product_dao = new ProductDAO();
	
		ArrayList<ProductDTO> coffeeList =  product_dao.getProductCoffeeList();
	%>
	
	<h2 class="coffee-text">
		<span>-Coffee</span>
	</h2>
	
	<div class="menu-container">
		<div class="coffee-box">
			<% for(int i = 0; i < coffeeList.size(); i++){
				ProductDTO product = coffeeList.get(i);	
			%>

			<div class="coffee">
				<a><img alt="menu" src="./../images/<%=product.getProductIMG() %>"></a>
				<%=product.getProductNAME() %>
			</div>
			
			<%} %>
		</div>
	</div>
</body> 
</html>