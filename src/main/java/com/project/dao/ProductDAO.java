package com.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.project.dto.*;

public class ProductDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs;
	
	//mysql 연결정보
	private String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	private String jdbc_url = "jdbc:mysql://mydbinstance.ctvgpvyuejsa.ap-northeast-2.rds.amazonaws.com:3306/myShoppingmallDB?serverTimezone=UTC";
	
	private String id = "shun04321";
	private String pw = "awstbs421!";
	
	public ProductDAO() {}
	
	//DB 연결 method
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, id, pw);
		}catch (Exception e) {
			System.out.println(e);
		}
	}
	
	void disconnect() {
		if(pstmt != null) {
			try{
				pstmt.close();
			}catch(Exception ignored){}
		}
		if(conn != null) {
			try{
				conn.close();
			}catch(Exception ignored){}
		}
	}
	
	public void ProductInsert(ProductDTO product) {
		connect();
		
		try {
			
			String sql = "insert into product values(?, ?, ?, ?, ?, ?, (now()), ?)";
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setInt(1, product.getProductID());
			pstmt.setString(2, product.getProductNAME());
			pstmt.setString(3, product.getProductCATEGORY());
			pstmt.setInt(4, product.getProductPRICE());
			pstmt.setInt(5, product.getProductSTOCK());
			pstmt.setString(6, product.getProductINTRO());
			pstmt.setString(7, product.getProductIMG());
			
			int update = pstmt.executeUpdate();
			
			if(update == 0) System.out.println("DB 업데이트 실패");
			else System.out.println("DB 업데이트 성공");
		}
		catch(Exception e) {
			System.out.println(e);
		}finally{
			disconnect();
		}
	}
	
	
	//전체 주소록 목록을 가져오는 method
	public ArrayList<ProductDTO> getProductList(){
		connect();
		ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();
		
		try {
			String sql = "select * from product";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ProductDTO product = new ProductDTO();
				
				product.setProductID(rs.getInt("product_id"));
				product.setProductNAME(rs.getString("product_name"));
				product.setProductCATEGORY(rs.getString("product_category"));
				product.setProductPRICE(rs.getInt("product_price"));
				product.setProductSTOCK(rs.getInt("product_stock"));
				product.setProductINTRO(rs.getString("product_intro"));
				product.setProductIMG(rs.getString("product_img"));
				
				productList.add(product);
			}
			rs.close();
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			disconnect();
		}
		return productList;
	}
		
}
