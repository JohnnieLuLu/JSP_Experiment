package com.jkw.ToolBean;

public class Film {
	String name;
	String director;
	String actor;
	String nation;
	String showTime;
	
	public String getName(){
		return name;
	}
	public String getDirector(){
		return director;
	}
	public String getActor(){
		return actor;
	}
	public String getNation(){
		return nation;
	}
	public String getShowTime(){
		return showTime;
	}
	public void setName(String name){
		this.name = name;
	}
	public void setDirector(String director){
		this.director = director;
	}
	public void setActor(String actor){
		this.actor = actor;
	}
	public void setNation(String nation){
		this.nation = nation;
	}
	public void setShowTime(String showTime){
		this.showTime = showTime;
	}
}