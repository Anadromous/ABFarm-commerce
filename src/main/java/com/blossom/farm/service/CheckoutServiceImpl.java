package com.blossom.farm.service;

import java.util.Iterator;
import java.util.Optional;
import java.util.Random;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blossom.farm.dao.CustomerRepository;
import com.blossom.farm.dao.ProduceRepository;
import com.blossom.farm.dao.ProductRespository;
import com.blossom.farm.dto.Purchase;
import com.blossom.farm.dto.PurchaseResponse;
import com.blossom.farm.model.Customer;
import com.blossom.farm.model.Order;
import com.blossom.farm.model.OrderItem;
import com.blossom.farm.model.Produce;
import com.blossom.farm.model.Product;

@Service
public class CheckoutServiceImpl implements CheckoutService{
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private ProduceRepository produceRepository;
	@Autowired
	private ProductRespository productRepository;
	
	public CheckoutServiceImpl() {
		
	}
	
	/*
	 * public CheckoutServiceImpl(CustomerRepository customerRepository,
	 * ProduceRepository produceRepository, ProductRespository productRepository) {
	 * this.customerRepository = customerRepository; this.produceRepository =
	 * produceRepository; this.productRepository = productRepository; }
	 */

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
		Iterator<OrderItem> itemIterator = orderItems.iterator();
		while(itemIterator.hasNext()) {
			OrderItem item = itemIterator.next();
			System.out.println("+++++++++++++++++++++++++++++++++++++++++++");
			System.out.println("******Curent item quantity: "+item.getQuantity());
			int quantity = item.getQuantity();
			int productQuantity;
			if(item.getCategoryId()<50) {
				System.out.println("******Updating Product Count*****");
				Product product = productRepository.findById((Long)item.getProductId()).get();
				productQuantity=product.getUnitsInStock();
				System.out.println("******Curent Product: "+product.getDescription());
				System.out.println("******Curent Puchase Quantity: "+quantity);
				System.out.println("******Curent Quantity: "+productQuantity);
				product.setUnitsInStock(productQuantity-quantity);
				productRepository.save(product);
				System.out.println("Updated Product Quantity");
			}else{
				System.out.println("******Updating Produce Count*****");
				Produce produce = produceRepository.findById((Long)item.getProductId()).get();
				productQuantity=produce.getUnitsInStock();
				produce.setUnitsInStock(productQuantity-quantity);
				produceRepository.save(produce);
				System.out.println("Updated Produce Quantity");
			}
		}
		//populate order with shipping and billing addresses
		order.setBillingAddress(purchase.getBillingAddress());
		order.setShippingAddress(purchase.getShippingAddress());
		
		//populate customer with order
		Customer customer = purchase.getCustomer();
		customer.add(order);
		
		//save to the database
		System.out.println("----Saving Customer----");
		customerRepository.save(customer);
		
		//return a response
		return new PurchaseResponse(orderTrackingNumber);
		
	}

	private String generateTrackingNumber() {
		//one way	
		//String r = Math.random().nextInt(999999).toString().padLeft(6, '0');
		// generate random UUID - google wikipedia Universally Unique Identifier version 4
		Integer otp = new Random().nextInt(999999);
		int noOfOtpDigit=6;
		  while(Integer.toString(otp).length()!=noOfOtpDigit) {
		  otp = new Random().nextInt(999999);
		 }
		//return UUID.randomUUID().toString();
		  return String.valueOf(otp);
		
	}

}
