package com.blossom.farm.dto;

import lombok.Data;

import java.util.Set;

import com.blossom.farm.model.Address;
import com.blossom.farm.model.Customer;
import com.blossom.farm.model.Order;
import com.blossom.farm.model.OrderItem;

@Data
public class Purchase {
	private int orderId;
    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
	
    public Purchase(int orderId, Customer customer, Address shippingAddress, Address billingAddress, Order order,
			Set<OrderItem> orderItems) {
		super();
		this.orderId=orderId;
		this.customer = customer;
		this.shippingAddress = shippingAddress;
		this.billingAddress = billingAddress;
		this.order = order;
		this.orderItems = orderItems;
	}

}
