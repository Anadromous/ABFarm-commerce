package com.blossom.farm.service;

import com.blossom.farm.dto.Purchase;
import com.blossom.farm.dto.PurchaseResponse;

public interface CheckoutService {
	
	PurchaseResponse placeOrder(Purchase purchase);

}
