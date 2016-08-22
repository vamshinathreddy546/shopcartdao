package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.models.Cart;
import com.niit.models.Product;

@Controller
public class CartController {
	
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired 
	private ProductDAO productDAO;
	
	
	
	@RequestMapping("addtoCart/{userId}/{id}")
	public String addToCart(@PathVariable("id") String Productid,@PathVariable("userId") int userId)throws Exception 
	{
		Cart item=new Cart();
		Product product=productDAO.get(Productid);
		item.setProductname(product.getName());
		item.setUserid(userId);
		item.setPrice(product.getPrice());
		item.setStatus("C");
		cartDAO.saveOrUpdate(item);
		return "redirect:/Welcome";
	}
	
	@RequestMapping("viewcart/{userId}")
	public String viewCart(@PathVariable("userId") int userId,Model model)
	{
		model.addAttribute("CartList",cartDAO.get(userId));
		model.addAttribute("CartPrice",cartDAO.CartPrice(userId));
		return "ViewCart";
	}
}
