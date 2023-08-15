package com.poly.lab.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("home")
public class indexx {
	
	@RequestMapping("index")
	public String home(Model model) {
		return "index";
	}
	
	@RequestMapping("Errorr")
	public String Errorr() {
		return "404";
	}
	@RequestMapping("contact")
	public String contact() {
		return "contact-us";
	}
	
	@RequestMapping("blog-single")
	public String blog() {
		return "blog-single";
	}
	@RequestMapping("lll")
	public String odedf() {
		return "profile";
	}
	@RequestMapping("iii")
	public String ooo() {
		return "Mail";
	}
	
	
}
