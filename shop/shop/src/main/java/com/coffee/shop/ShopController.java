package com.coffee.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.coffee.shop.dao.MemberDao;

@Controller
public class ShopController {
	@Autowired
	MemberDao m;
	
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("reg-click")
	public ModelAndView submit(@RequestParam("r") String register) {
		return new ModelAndView("register-page");
	}
	
	@RequestMapping("display-info")
	public ModelAndView displayAll() {
		 System.out.println(m.displayAllUsers());
		return new ModelAndView("user-display-page", "users", m.displayAllUsers());
	}
	
	@RequestMapping("register")
	public ModelAndView add(@RequestParam("firstName") String f,
							@RequestParam("lastName") String l,
							@RequestParam("email") String e,
							@RequestParam("phoneNumber") String pn,
							@RequestParam("password") String ps) {
		m.add(f,l, e, pn, ps);
		return new ModelAndView("redirect:display-info");
	}
	
	
}
