package com.shxeyol.giftshop.entity;

import java.util.HashMap;
import java.util.Map;

public class Cart {

	public Map<Integer,CartItem> container = new HashMap<Integer,CartItem>();
	public int total;
	
	public void addCart(Product pro){
		if(container.containsKey(pro.getProductid())){
			CartItem ci=container.get(pro.getProductid());
			ci.setCount(ci.getCount()+1);
		}else{
			CartItem ci=new CartItem();
			ci.setProduct(pro);
			ci.setCount(1);
			container.put(pro.getProductid(), ci);
		}
		
	}

	
}




