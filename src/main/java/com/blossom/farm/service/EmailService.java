package com.blossom.farm.service;

import com.blossom.farm.dto.Purchase;

public interface EmailService {

	public String sendConfirmationEmail(Purchase purchase);
	
	public String sendEmail();
	
	public String sendEmailwithAttachment();
	
}
