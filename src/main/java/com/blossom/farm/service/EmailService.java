package com.blossom.farm.service;

import com.blossom.farm.dto.Purchase;
import com.blossom.farm.model.Contact;

public interface EmailService {

	public Purchase sendConfirmationEmail(Purchase purchase);
	
	public String sendEmail();
	
	public Contact sendContactEmail(Contact contact);
	
}
