package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class kpp {
private ArrayList<String> zt;
private HashMap<String,ArrayList<String>> tm;

public kpp(){
	zt=new ArrayList<String>();
	tm=new HashMap<String,ArrayList<String>>();
	
	String qk="û�нӵ绰";
	zt.add(qk);
	
	String xz1="�ҵ��ֻ��ػ���";
	String xz2="���ڴ���Ϸ";
	String xz3="���ڹ�ָ���������";
	String xz4="���ڹ���";
	
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
