package com.javalec.project.dto;



public class Detaillist_dto {
	//Field
	
	String wName;
	
	String wContent;
	
	String wFinish;

	//constructor
	public Detaillist_dto(){
		
	}

	public Detaillist_dto(String wName, String wContent, String wFinish) {
		super();
		this.wName = wName;
		this.wContent = wContent;
		this.wFinish = wFinish;

	
}
	//Method

	public String getwName() {
		return wName;
	}

	public void setwName(String wName) {
		this.wName = wName;
	}

	public String getwContent() {
		return wContent;
	}

	public void setwContent(String wContent) {
		this.wContent = wContent;
	}

	public String getwFinish() {
		return wFinish;
	}

	public void setwFinish(String wFinish) {
		this.wFinish = wFinish;
	}

}