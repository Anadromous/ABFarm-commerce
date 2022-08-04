package com.blossom.farm.service;

import java.io.File;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.blossom.farm.dto.Purchase;

@Service
public class EmailServiceImpl implements EmailService {

	@Autowired
	JavaMailSender javaMailSender;

	@Override
	public String sendOrderEmail(Purchase purchase) {
		SimpleMailMessage message = new SimpleMailMessage();
		//javaMailSender = new JavaM
		message.setFrom("pchapman251@gmail.com");
		message.setTo("pchapman@easystreet.net");
		message.setSubject("Test Email from ABF website!");
		message.setText("Here is the email. It will have your order in it.--> "+purchase.getCustomer().getEmail());
		System.out.println("Sending email");
		javaMailSender.send(message);
		System.out.println("Sent email");
		return "Mail sent successfully";
	}
	
	@Override
	public String sendEmail() {
		SimpleMailMessage message = new SimpleMailMessage();
		//javaMailSender = new JavaM
		message.setFrom("pchapman251@gmail.com");
		message.setTo("pchapman@easystreet.net");
		message.setSubject("Test Email from ABF website!");
		message.setText("Here is the email. It will have your order in it.");
		System.out.println("Sending plain email");
		javaMailSender.send(message);
		System.out.println("Sent plain email");
		return "Mail sent successfully";
	}

	@Override
	public String sendEmailwithAttachment() {
		try {
			MimeMessage message = javaMailSender.createMimeMessage();

			MimeMessageHelper messageHelper = 
					new MimeMessageHelper(message, true);

			messageHelper.setFrom("");
			messageHelper.setTo("");
			messageHelper.setSubject("Test Subject");
			messageHelper.setText("Test Body");

			File file = new File("Path To File");

			messageHelper.addAttachment(file.getName(), file);

			javaMailSender.send(message);

			return "Mail sent successfully";

		} catch (Exception e) {
			return "Mail sent failed";
		}
	}
}
