package com.blossom.farm.dto;

import lombok.Data;

import java.util.Set;

import com.blossom.farm.model.Address;
import com.blossom.farm.model.Customer;
import com.blossom.farm.model.Order;
import com.blossom.farm.model.OrderItem;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;

}
