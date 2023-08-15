package com.poly.lab.Controller.Admin;

import java.net.http.HttpRequest;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.lab.DAO.AccountDAO;
import com.poly.lab.DAO.OrderDAO;
import com.poly.lab.DAO.OrderDetailDAO;
import com.poly.lab.DAO.ProductDAO;
import com.poly.lab.Entity.Order;
import com.poly.lab.Entity.ReportCategory;
import com.poly.lab.Entity.Top10;
import com.poly.lab.Entity.TopCustomer;
import com.poly.lab.Entity.RevenueReport;
import com.poly.lab.service.CookieService;
import com.poly.lab.service.ParamService;
import com.poly.lab.service.SessionService;



@RequestMapping("admin")
@Controller
public class ReportController {

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
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@RequestMapping("bestsaler")
	public String bestSaler(Model model) {
		Pageable pageable = PageRequest.of(0, 10000); 
		Page<Top10> topList = orderDetailDAO.getTop10(pageable);
		model.addAttribute("topList", topList);
		return ("Admin/bestsaler");
	}
	
	@RequestMapping("topcustomer")
	public String topCustomer(Model model) {
		List<TopCustomer> topCustomer = accDAO.getTopAccount();
		model.addAttribute("topCustomer", topCustomer);
		return ("Admin/topcustomer");
	}
	
	@RequestMapping("reportcategory")
	public String inventory(Model model) {
		List<ReportCategory> items = proDAO.getReportCategory();
		model.addAttribute("items", items);
		return "Admin/reportcategory";
	}
	
	@RequestMapping("reportOrderByDate")
	public String reportOrderByDate(Model model) {
		return "Admin/reportOrderByDate";
	}
	
	
	@PostMapping("reportOrderByDate")
	public String reportByDate(Model model, @RequestParam("p") Optional<Integer> p) {
		Date firstDate = paramService.getDate("firstDate", "MM-dd-yyyy");
		Date lastDate = paramService.getDate("lastDate", "MM-dd-yyyy");
		sessionService.set("firstDate", firstDate);
		sessionService.set("lastDate", lastDate);
		Pageable pageable = PageRequest.of(p.orElse(0), 1000);
		Page<Order> page = orderDAO.findOrderByDate(firstDate, lastDate, pageable);
		model.addAttribute("page", page);
		return "Admin/reportOrderByDate";
	}
	
	
	@RequestMapping("revenuereport")
	public String RevenueReport(Model model) {
		List<RevenueReport> items = orderDetailDAO.getRevenueByCategory();
		model.addAttribute("items", items);
		return "Admin/revenuereport";
	}
	
}
