package com.poly.lab.Controller;

import java.util.Optional;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.lab.DAO.AccountDAO;
import com.poly.lab.Entity.Account;
import com.poly.lab.service.MailerServiceImpl;
import com.poly.lab.service.ParamService;
import com.poly.lab.service.SessionService;

import net.bytebuddy.utility.RandomString;

@Controller
@RequestMapping("home")
public class ForgotPasswordController {

	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	ParamService paramService;
	@Autowired
	MailerServiceImpl mailer;
	@Autowired
	ServletContext app;
	
	@RequestMapping("forgot-password")
	public String index() {
		return "forgot-password";
	}
	
	@PostMapping("forgot-password")
	public String change(Model model) {
		String email = paramService.getString("email", "");
		String username = paramService.getString("username", "");
		String subject = "Send your Password!";
		String body = "Your Password: ";
//		String randomPassword = RandomString.make(6);
		
		try {
			Account user = dao.findById(username).get();
				if(!user.getEmail().equals(email)) {
					model.addAttribute("message", "Wrong Email!");
				}else {
//					user.setPassword(randomPassword);
//					dao.save(user);
					mailer.send(email, subject, body+user.getPassword());
					model.addAttribute("message", "Please check your Email!");
				}
		} catch (Exception e) {
			model.addAttribute("message", "Account invalid!");
		}
		return "forgot-password";
	}
//	
//	@PostMapping("forgot-password")
//	public String forgotpass(Model model) {
//		String email = paramService.getString("email", "");
//		String username = paramService.getString("username", "");
//		String subject = "Send your Password!";
//		String body = "Your Password: ";
//		String password;
//		String randomPassword = RandomString.make(6);
//		Optional<Account> accOp = dao.findByUsername(username);
//		if(accOp.isPresent() && accOp.get().getEmail().equals(email)) {
//			try {
//				password = accOp.get().getPassword();
//				mailer.send(email, subject, body+password);
//				model.addAttribute("message", "Please check your Email!");
//			} catch (MessagingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//		}else {
//			model.addAttribute("error", "Invalid Email or Username!");
//		}
//		System.out.println(randomPassword);
//		return "home/forgot-password";
//	}
}
