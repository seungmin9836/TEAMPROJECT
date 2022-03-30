package com.javalec.project.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Write_dao {

	DataSource dataSource;

	public Write_dao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/to_do_list");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void cwrite(String wName, String wContent,String wFinish) {
		//TODO Auto-generated method stub
	
			Connection connection = null;
			PreparedStatement preparedStatement = null;
	
			try {
				connection = dataSource.getConnection();
				String query = "insert into td_write (wContent, wFinish) values(?,?)";
				preparedStatement = connection.prepareStatement(query);
//				preparedStatement.setString(1, wName);
				preparedStatement.setString(1, wContent);
				preparedStatement.setString(2, wFinish);

				preparedStatement.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {   
				
			try {
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}
}