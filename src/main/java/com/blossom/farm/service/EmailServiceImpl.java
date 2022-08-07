package com.blossom.farm.service;

import java.io.File;
import java.util.List;
import java.util.Set;

import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.blossom.farm.dto.Purchase;
import com.blossom.farm.model.OrderItem;

@Service
public class EmailServiceImpl implements EmailService {
	
	@Value("${spring.mail.username}")
    private String email;

	@Autowired
	JavaMailSender javaMailSender;

	@Override
	public String sendConfirmationEmail(Purchase purchase) {
		System.out.println("Sending cofirmation email");
		SimpleMailMessage message = new SimpleMailMessage();
		//javaMailSender = new JavaM
		message.setFrom(email);
		message.setTo(purchase.getCustomer().getEmail());	
				message.setSubject("Test Email from ABF website!");
		message.setText(purchase.getCustomer().getFirstName()+", thank you for your purchase from Apple Blossom Farm!\n\n"
				+ "Here is your order tracking number:\n"
				+ " "+purchase.getOrder().getOrderTrackingNumber()+"\n\n"
				/*
				 * Set<OrderItem> orderItems = purchase.getOrderItems(); for(OrderItem item :
				 * orderItems) { item.getProductId }
				 */
						+ "We will be in contact shortly to complete the order.\n\n"
						+ "Sincerely,\n"
						+ "Peter and Lynn\n"
						+ "Apple Blossom Farm,LLC");
		System.out.println("Sending email");
		javaMailSender.send(message);
		System.out.println("Sent email");
		return "Mail sent successfully";
	}
	
	@Override
	public String sendEmail() {
		System.out.println("Sending plain email");
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
