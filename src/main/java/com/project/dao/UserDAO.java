package com.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.project.dto.*;

public class UserDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	
	private String jdbc_driver = "com.mysql.jdbc.Driver";
	private String jdbc_url = "jdbc:mysql://localhost/sys?serverTimezone=UTC";
	
	private String id = "root";
	private String pw = "TfkxPu5932";
	
	public UserDAO() {
		
	}
	
	public void UserInsert(UserDTO user) {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, id, pw);
			
			String sql = "insert into user_test values(?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPW());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUser_address());
			pstmt.setString(5, user.getUser_phone());
			pstmt.setString(6, user.getUser_email());
			
			int update = pstmt.executeUpdate();			
		}
		catch(Exception e) {
			System.out.println(e);
		}finally{
			try{
				pstmt.close();
			}catch(Exception ignored){}
			try{
				conn.close();
			}catch(Exception ignored){}
		}
	}
}
