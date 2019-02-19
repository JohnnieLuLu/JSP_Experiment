package com.jkw.ToolBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class db {
	Connection conn = null;
	ResultSet rs = null;
	String url = "jdbc:sqlserver://localhost:1433;integratedSecurity=true; DatabaseName=Movie;";
	String username = "sa";
	String password = "123456";
	public db(){
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("A");
		}
		try {
			Connection conn = DriverManager.getConnection(url,username,password);
			Statement stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("B");
		}
	}
	public ArrayList<Film> executeQuery(String sql){
		ArrayList<Film> filmList = new ArrayList<Film>();
		try {
			conn = DriverManager.getConnection(url,username,password);
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
				while(rs.next()){
					Film f = new Film();
					f.setName(rs.getString("name"));
					f.setDirector(rs.getString("director"));
					f.setActor(rs.getString("actor"));
					f.setNation(rs.getString("nation"));
					f.setShowTime(rs.getString("showTime"));
					filmList.add(f);
				}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return filmList;
		
	}
}
