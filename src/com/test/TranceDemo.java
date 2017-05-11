package com.test;
import java.util.Locale;
import java.util.ResourceBundle;
/**
* @ClassName: I18NTest
* @Description: 编程实现固定文本的国际化
* @author: 孤傲苍狼
* @date: 2014-8-29 下午9:34:05
*
*/ 

public class TranceDemo {
	 public static void main(String[] args) {
	        //资源包基名(包名+myproperties)
	        String basename = "properties.myproperties";
	        //设置语言环境
	        Locale cn = Locale.CHINA;//中文
	        Locale us = Locale.US;//英文
	        //根据基名和语言环境加载对应的语言资源文件
	        ResourceBundle myResourcesCN = ResourceBundle.getBundle(basename,cn);//加载myproperties_zh.properties
	        ResourceBundle myResourcesUS = ResourceBundle.getBundle(basename,us);//加载myproperties_en.properties
	         
	        //加载资源文件后， 程序就可以调用ResourceBundle实例对象的 getString方法获取指定的资源信息名称所对应的值。
	        //String value =  myResources.getString(“key");
	        String usernameCN = myResourcesCN.getString("about");
	        String passwordCN = myResourcesCN.getString("search");
	         
	        String usernameUS = myResourcesUS.getString("about");
	        String passwordUS = myResourcesUS.getString("search");
	       System.out.println(Locale.getDefault());
	        System.out.println(Locale.US);
	        System.out.println(usernameUS+"--"+passwordUS);
	    }
	
}
