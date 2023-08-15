package com.poly.lab.Controller.Admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.lab.Entity.Order;
import com.poly.lab.Entity.OrderDetail;
import com.poly.lab.DAO.OrderDAO;
import com.poly.lab.DAO.OrderDetailDAO;
import com.poly.lab.service.CookieService;
import com.poly.lab.service.ParamService;
import com.poly.lab.service.SessionService;

@Controller
@RequestMapping("admin")
public class OrderDetailController {
	
	
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	OrderDetailDAO orderDetailDAO;
	@Autowired
	OrderDAO orderDAO; 
	

	@RequestMapping("orderDetail")
	public String locBrand(Model model, @RequestParam("id") long id, @RequestParam("p") Optional<Integer> p) {
		Order order = new Order();
		List<Order> orders = orderDAO.findAll();
		for (Order ord : orders) {
			if (ord.getId() == id) {
				order = ord;
				break;
			}
		}	
		model.addAttribute("ord", order);
		
		Pageable pageable = PageRequest.of(p.orElse(0), 999);
		Page<OrderDetail> page = orderDetailDAO.findByOrder(id, pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "Admin/orderDetailList";
	}

}
