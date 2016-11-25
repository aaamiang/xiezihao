package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class kpp {
private ArrayList<String> zt;
private HashMap<String,ArrayList<String>> tm;

public kpp(){
	zt=new ArrayList<String>();
	tm=new HashMap<String,ArrayList<String>>();
	
	String qk="没有接电话";
	zt.add(qk);
	
	String xz1="我的手机关机了";
	String xz2="我在打游戏";
	String xz3="我在逛街给你妈买东西";
	String xz4="我在工作";
	
	ArrayList<String>temp=new ArrayList<String>();
	temp.add(xz1);
	temp.add(xz2);
	temp.add(xz3);
	temp.add(xz4);
	tm.put(qk,temp);
}
public ArrayList<String>getzt(){
	return zt;
}
public void setzt(ArrayList<String>zt){
	this.zt=zt;	
}
public HashMap<String,ArrayList<String>>gettm(){
	return tm;
}

}
