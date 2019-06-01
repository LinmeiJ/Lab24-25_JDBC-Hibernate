package com.coffee.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.coffee.shop.dao.ItemDao;
import com.coffee.shop.member.Items;

@Controller
public class ItemController {
	@Autowired
	ItemDao dao;
	
	@RequestMapping("go-menu")
	public ModelAndView home() {
		System.out.println(dao.displayAll());
		return new ModelAndView("itemList-page", "listItems",dao.displayAll());
	}
	
	@RequestMapping("search")
	public ModelAndView search(@RequestParam("itemName") String name) {
		System.out.println(dao.findByName(name));
		return new ModelAndView("search-result","result", dao.findByName(name));
	}
	
	@RequestMapping("editItem")
	public ModelAndView getId(@RequestParam("id") Integer id) {
		return new ModelAndView("update","id", id);
	}
		
	@RequestMapping("item-update")
	public ModelAndView update(Items item) {
		
		dao.addOrUpdateItem(item);
		return new ModelAndView("redirect:go-menu");
	}
	
	@RequestMapping("deleteItem")
	public ModelAndView deleteItem(@RequestParam("id") Integer id) {
		dao.deleteById(id);
		return new ModelAndView("redirect:go-menu");
	}
	
	@RequestMapping("addItem")
	public ModelAndView addItem() {
		return new ModelAndView("add-page");
	}
	
	@RequestMapping("save")
	public ModelAndView add(@RequestParam("name") String n, @RequestParam("description") String d,
			   @RequestParam("quantity") Integer q,
			   @RequestParam("price") Double p) {
		dao.addOrUpdateItem(new Items(n,d,q,p));
		return  new ModelAndView("redirect:go-menu");
	}
	
}
	
