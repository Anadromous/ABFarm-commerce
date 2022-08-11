package com.blossom.farm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.blossom.farm.dto.Purchase;
import com.blossom.farm.model.Contact;
import com.blossom.farm.service.EmailServiceImpl;

@CrossOrigin("http://localhost:4200")
@RestController
@RequestMapping("/api")
public class EmailController {

	@Autowired
	EmailServiceImpl emailService;

	@PostMapping("/sendEmail")
	public String sendEmail() {
		return emailService.sendEmail();
	}

	@PostMapping("/sendConfirmationEmail")
	public Purchase sendConfirmationEmail(@RequestBody Purchase purchase) {
		return emailService.sendConfirmationEmail(purchase);
	}

	@PostMapping("/sendContactEmail")
	public Contact sendContactEmail(@RequestBody Contact contact) {
		return emailService.sendContactEmail(contact);
	}

}
