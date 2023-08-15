package com.poly.lab.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.lab.DAO.AccountDAO;
import com.poly.lab.DAO.ProductDAO;
import com.poly.lab.Entity.Product;
import com.poly.lab.service.CookieService;
import com.poly.lab.service.ParamService;
import com.poly.lab.service.SessionService;



@Controller
@RequestMapping("home")
public class product_detailsController {
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO accDAO;
	@Autowired
	ProductDAO proDAO;
	
	
	@RequestMapping("product-details")
	public String index() {
		return "product-details";
	}
	
	
	@RequestMapping(value = "product/detail/{id}")
	public String view(ModelMap model, @PathVariable("id") int id) {
		Product product = new Product();
		List<Product> products = proDAO.findAll();
		for (Product pr : products) {
			if (pr.getId() == id) {
				product = pr;
				break;
			}
		}
		model.addAttribute("products", products);
		model.addAttribute("pr", product);
		return "product-details";
	}
}
