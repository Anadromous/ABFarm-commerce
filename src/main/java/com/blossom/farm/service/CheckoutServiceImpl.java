package com.blossom.farm.service;

import com.blossom.farm.model.Customer;
import com.blossom.farm.model.Order;
import com.blossom.farm.model.OrderItem;

import java.util.Set;
import java.util.UUID;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blossom.farm.dao.CustomerRepository;
import com.blossom.farm.dto.Purchase;
import com.blossom.farm.dto.PurchaseResponse;

@Service
public class CheckoutServiceImpl implements CheckoutService{
	
	private CustomerRepository customerRepository;
	
	public CheckoutServiceImpl(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}
	
    @Autowired
    private EmailService emailService;

	@Override
	@Transactional
	public PurchaseResponse placeOrder(Purchase purchase) {
		
		// retrieve order from DTO
		Order order = purchase.getOrder();
		
		//generate tracking number
		String orderTrackingNumber = generateTrackingNumber();
		order.setOrderTrackingNumber(orderTrackingNumber);
		
		//populate order with orderItem
		Set<OrderItem> orderItems = purchase.getOrderItems();
		orderItems.forEach(item -> order.add(item));
		
		//populate order with shipping and billing addresses
		order.setBillingAddress(purchase.getBillingAddress());
		order.setShippingAddress(purchase.getShippingAddress());
		
		//populate customer with order
		Customer customer = purchase.getCustomer();
		customer.add(order);
		
		//save to the database
		customerRepository.save(customer);
		System.out.println("----Saving Customer----");
		emailService.sendConfirmationEmail(purchase);
		System.out.println("----Sending Email----");
		
		//return a response
		return new PurchaseResponse(orderTrackingNumber);
		
	}

	private String generateTrackingNumber() {
		// generate random UUID - google wikipedia Universally Unique Identifier version 4
		return UUID.randomUUID().toString();
	}

}
