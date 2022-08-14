package com.blossom.farm.service;

import java.math.BigDecimal;
import java.util.Iterator;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.blossom.farm.dto.Purchase;
import com.blossom.farm.model.Contact;
import com.blossom.farm.model.Order;
import com.blossom.farm.model.OrderItem;

@Service
public class EmailServiceImpl implements EmailService {
	
	@Value("${spring.mail.username}")
    private String email;

	@Autowired
	JavaMailSender javaMailSender;

	@Override
	public Purchase sendConfirmationEmail(Purchase purchase) {
		System.out.println("Sending cofirmation email: "+purchase.toString());
		System.out.println("Purchase Tracking Number: "+purchase.getOrderId());
		Order order = purchase.getOrder();
		System.out.println("Order from purchase: "+ order.getTotalPrice());
		SimpleMailMessage message = new SimpleMailMessage();
		StringBuilder sb = new StringBuilder();
        sb.append(purchase.getCustomer().getFirstName()+", thank you for your purchase from Apple Blossom Farm!").append(System.lineSeparator());
        sb.append("Here is your order tracking number: "+purchase.getOrderId()).append(System.lineSeparator());
        sb.append("Your order:").append(System.lineSeparator());
		Set<OrderItem> orderItems = purchase.getOrderItems(); 
		System.out.println("Order item length: "+orderItems.size());
		Iterator<OrderItem> itemIterator = orderItems.iterator();
		while(itemIterator.hasNext()) {
			OrderItem item = itemIterator.next();
			sb.append("Product: "+item.getProductName());
			sb.append(" / ");
			sb.append("Quantity: "+item.getQuantity());
			sb.append(" / ");
			sb.append("Price: "+item.getUnitPrice().multiply(new BigDecimal(item.getQuantity())))
			.append(System.lineSeparator());
		}
		sb.append("Total Order: "+order.getTotalPrice());
		sb.append(System.lineSeparator());
		sb.append("We will be in contact with you shortly to complete the order and arrange delivery.").append(System.lineSeparator());
		sb.append("Sincerely,").append(System.lineSeparator());
		sb.append("Peter and Lynn").append(System.lineSeparator());
		sb.append("Apple Blossom Farm");
		message.setFrom(email);
		message.setTo(purchase.getCustomer().getEmail());	
		message.setSubject("Your purchase from Apple Blossom Farm");
		message.setText(sb.toString());
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
