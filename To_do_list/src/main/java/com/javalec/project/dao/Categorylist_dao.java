package com.javalec.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.project.dto.BDto;
import com.javalec.project.dto.Categorylist_dto;

public class Categorylist_dao {
	DataSource dataSource;
	
	public Categorylist_dao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/to_do_list"); //java:comp/env는 BListCommand다!
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	// ------------------------------------ 검색 부분 시작 --------------------------------------------
	// 전체 검색 (dao는 DB에서 가져오는 거고 jsp에 보내줘야되기때문에 dto를 만들러 가야됨)
		public ArrayList<Categorylist_dto> list() {
			ArrayList<Categorylist_dto> dtos = new ArrayList<Categorylist_dto>();
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			//주석주석
			try {
				connection = dataSource.getConnection();
				String query = "select cId, cName from td_category"; 
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					int cId = resultSet.getInt("cId");
					String cName = resultSet.getString("cName");
					
					Categorylist_dto dto = new Categorylist_dto(cId, cName); // dto에 다 넣은것
					dtos.add(dto); // ArrayList dtos에 dto한줄씩 쌓는다.
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally { // finally는 위에 try/catch문이 이상이 있든 없거나 무조건 온다
				try {
					if(resultSet != null) resultSet.close(); // resultSet에 데이터가 있으면 닫아줘
					if(preparedStatement != null) preparedStatement.close(); // resultSet에 데이터가 있으면 닫아줘
					if(connection != null) connection.close(); // resultSet에 데이터가 있으면 닫아줘
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			return dtos;
		} // list

} //Categorylist_dao class
