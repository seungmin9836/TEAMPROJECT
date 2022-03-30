package com.javalec.project.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.project.dao.Detaillist_dao;
import com.javalec.project.dto.Detaillist_dto;



public class DetaillistCommand implements PCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		Detaillist_dao dao = new Detaillist_dao();
		ArrayList<Detaillist_dto> dtos = dao.list();
		request.setAttribute("list", dtos);
	}

}
