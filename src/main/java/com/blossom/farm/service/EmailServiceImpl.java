package com.blossom.farm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.blossom.farm.dto.Purchase;
import com.blossom.farm.model.Contact;

@Service
public class EmailServiceImpl implements EmailService {
	
	@Value("${spring.mail.username}")
    private String email;

	@Autowired
	JavaMailSender javaMailSender;

	@Override
	public Purchase sendConfirmationEmail(Purchase purchase) {
		System.out.println("Sending cofirmation email");
		SimpleMailMessage message = new SimpleMailMessage();
		StringBuilder sb = new StringBuilder();
        sb.append(purchase.getCustomer().getFirstName()+", thank you for your purchase from Apple Blossom Farm!").append(System.lineSeparator());
        sb.append("Here is your order tracking number:").append(System.lineSeparator());
		sb.append(purchase.getOrder().getOrderTrackingNumber()).append(System.lineSeparator());
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
		return purchase;
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
	public Contact sendContactEmail(Contact contact) throws MailException{
		System.out.println("Sending contact email to: "+contact.getName());
	          StringBuilder sb = new StringBuilder();
	          sb.append("Name: " + contact.getName()).append(System.lineSeparator());
	          sb.append("\n Message: " + contact.getMessage());
	          SimpleMailMessage mail = new SimpleMailMessage();
	          mail.setTo("pchapman@easystreet.net");
	          mail.setFrom(contact.getEmail());
	          mail.setSubject(contact.getMessage());
	          mail.setText(sb.toString());
	           
	          javaMailSender.send(mail);
	          System.out.println("Sent contact email to: "+contact.getName());
	          return contact;
	}
}
