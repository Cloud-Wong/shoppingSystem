package com.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Order {
	private int good_id;   //标示id
	private String good_name; //商品名
	private String country;   //
	private String adress;
	private String receiver;
	private String utc;
	
	public Order(){}
	
	//get方法
	public int getId(){
		return this.good_id;
	}
	
	public String getName(){
		return this.good_name;
	}
	
	public String getCountry(){
		return this.country;
	}
	
	public String getReceiver(){
		return this.receiver;
	}
	
	public String getAdress(){
		return this.adress;
	}

	public String getUtc(){
		return this.utc;
	}
	//set方法
	public void setId(int id){
		this.good_id=id;
	}
	
	public void setName(String name){
		this.good_name=name;
	}
	
	public void setCountry(String country){
		this.country=country;
	}
	
	public void setReceiver(String receiver){
		this.receiver=receiver;
	}
	
	public void setAdress(String adress){
		this.adress=adress;
	}
	
	public void setUtc(String utc){
		this.utc=utc;
	}
	
	
}
