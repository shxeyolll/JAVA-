package com.shxeyol.giftshop.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.shxeyol.giftshop.entity.User;
import com.shxeyol.giftshop.user.dao.userDaoImpl;

@Service
public class userServiceImpl {

	@Resource
	private userDaoImpl userDaoImpl;
	
	@Transactional
	public User UserLogin(String email,String password){
		System.out.println("ssssssss");
		User u = this.userDaoImpl.findByEmail(email);
		if(u!=null){
			if(u.getPassword().equals(password)){
				return u;
			}else{
				return null;
			}
		}else {
			 return null;
		}
	}
	@Transactional
	public int UserRegister(User u,Model model){
		
		String email = u.getEmail();
		User user = (User)this.userDaoImpl.findByEmail(email);
		if(user != null){
			//在数据库中查找查到了
			model.addAttribute("registererror","该邮箱已经被注册可选择登录");
			System.out.println("ok");
			return 0;
		} else{
			//没查到在数据库中添加
			System.out.println("add");
			this.userDaoImpl.addUser(u);
			return 1;
		}
		
	}
}


