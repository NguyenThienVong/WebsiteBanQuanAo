package com.poly.lab.service;



import javax.mail.MessagingException;


import com.poly.lab.Entity.MailInfo;

public interface MailerService {
	void send(MailInfo mail) throws MessagingException;
	void send(String to, String subject, String body) throws MessagingException;

	void queue(MailInfo mail);
	void queue(String to, String subject, String body);

	
	
	
}
