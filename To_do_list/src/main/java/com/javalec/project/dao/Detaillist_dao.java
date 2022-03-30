package com.javalec.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.project.dto.Detaillist_dto;

public class Detaillist_dao {

	DataSource dataSource; // Servers-context.xml을 가져올거임

	public Detaillist_dao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/to_do_list");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 전체검색
	public ArrayList<Detaillist_dto> list() {
		ArrayList<Detaillist_dto> dtos = new ArrayList<Detaillist_dto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String query = "select  wName, wContent, wFinish from td_write";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				
				String wName = resultSet.getString("wName");
				String wContent = resultSet.getString("wContent");
				String wFinish = resultSet.getString("wFinish");
			
				Detaillist_dto dto = new Detaillist_dto(wName, wContent, wFinish);
				dtos.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 이상이 있거나 없거나 온다.
			try {
				if (resultSet != null)
					resultSet.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		

		return dtos;

	

	
	}	
}
