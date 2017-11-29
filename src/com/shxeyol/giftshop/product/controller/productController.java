package com.shxeyol.giftshop.product.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shxeyol.giftshop.entity.Cart;
import com.shxeyol.giftshop.entity.Product;
import com.shxeyol.giftshop.product.service.productServiceImpl;

@Controller
@RequestMapping("/product")
public class productController {

	@Resource
	private productServiceImpl productServiceImpl;

	@RequestMapping("/show")
	public String show(HttpSession session, Model model) {
		List<Product> list = (List<Product>) this.productServiceImpl.showAll();
		session.setAttribute("productlist", list);
		return "about";
	}

	@RequestMapping("/showcart")
	public String showCart(@RequestParam("productid") int id, HttpSession session, Model model) {

		Cart cart = this.productServiceImpl.addCart(id, session);
		return "about";
	}

	@RequestMapping("/showpage")
	public String showPage(@RequestParam("pageNum") String pageNum) {
		int num = 0;
		if (pageNum == null || pageNum.equals("")) {
			num = 1;
		} else {
			num = Integer.parseInt(pageNum);
		}
		
		

		return "";
	}

}
