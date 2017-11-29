package com.shxeyol.giftshop.product.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shxeyol.giftshop.entity.Cart;
import com.shxeyol.giftshop.entity.CartItem;
import com.shxeyol.giftshop.entity.Product;
import com.shxeyol.giftshop.product.dao.productDaoImpl;

@Service
public class productServiceImpl {

	@Resource
	private productDaoImpl productDaoImpl;

	public List<Product> showAll() {
		List list = this.productDaoImpl.findAll();
		return list;
	}

	public Cart addCart(int id, HttpSession session) {

		Product product = this.productDaoImpl.findById(id);
		
		List list = new ArrayList<>();

		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
		}
		cart.addCart(product);
		Iterator i = cart.container.values().iterator();
		while (i.hasNext()) {
			CartItem ci = (CartItem) i.next();
			list.add(ci);
		}

		session.setAttribute("cart", cart);
		session.setAttribute("cartlist", list);
		return cart;
	}
	
}
