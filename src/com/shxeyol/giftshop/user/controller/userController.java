package com.shxeyol.giftshop.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shxeyol.giftshop.entity.User;
import com.shxeyol.giftshop.user.service.userServiceImpl;

@Controller
@RequestMapping("user")
public class userController {

	@Resource
	private userServiceImpl userServiceImpl;

	@RequestMapping("/login")
	public String login(@RequestParam(value = "password", required = false) String password,
			@RequestParam(value = "email", required = false) String email, Model model, HttpSession session) {
		System.out.println("cccccccccc");

		User u = (User) this.userServiceImpl.UserLogin(email, password);
		if (u != null) {
			session.setAttribute("user", u);
			model.addAttribute("errorinfo", "");
			
			return "index";
		} else {
			model.addAttribute("errorinfo", "您的账号密码不正确！");
			return "login";
		}
	}

	@RequestMapping("/register")
	public String register(@RequestParam(value = "password", required = false) String password,
			@RequestParam(value = "email", required = false) String email,
			@RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "confirmpassword", required = false) String cpassword, Model model,
			HttpSession session) {
		if (password != "" && cpassword != "" && email != "" && username != "") {
			if (password.equals(cpassword)) {
				User u = new User();
				u.setEmail(email);
				u.setPassword(password);
				u.setUsername(username);

				int type = this.userServiceImpl.UserRegister(u, model);
				if (type == 0) {
					model.addAttribute("registererror", "该邮箱已注册，可直接登录");
					return "register";
				} else {

					model.addAttribute("registererror", "");
					System.out.println("register" + email + password);
					session.setAttribute("user", u);
					return "about";

				}

			} else {
				model.addAttribute("registererror", "两次密码不同");
				return "register";
			}
		} else {
			model.addAttribute("registererror", "不能为空");
			return "register";
		}
	}

	@RequestMapping("/loginout")
	public String loginout(HttpSession session, Model model) {
		User u = (User) session.getAttribute("user");
		if (u != null) {
			session.setAttribute("user", null);
		}
		return "index";
	}

}