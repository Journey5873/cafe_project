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
	
	<div class="menu-container">
		
		<h2 class="coffee-text">
			-Coffee
		</h2>
			
		<ul class="coffee-outer">
		
			<%
				for(ProductDTO menu : coffeeList){
			%>

			<li class="coffee-inner">
				<div class="coffee">
					<a href="./../product/menu_detail.jsp?product_id=<%=menu.getProductID()%>"><img alt="menu" src="./../images/<%=menu.getProductIMG() %>"></a><br>
					<%=menu.getProductNAME() %>
				</div>
			</li>
			
			<%} %>		
		</ul>
	</div>
</body> 
</html>