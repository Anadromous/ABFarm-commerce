package com.blossom.farm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.blossom.farm.dto.Purchase;
import com.blossom.farm.service.EmailServiceImpl;

@CrossOrigin("http://localhost:4200")
@RestController
@RequestMapping("/api")
public class EmailController {

	@Autowired
	EmailServiceImpl emailService;
	
	@GetMapping("/sendEmail")
	public String sendEmail() {
		return emailService.sendEmail();
	}


	  @GetMapping("/sendOrderEmail") public String sendEmail(@RequestBody Purchase purchase) { return
	  emailService.sendOrderEmail(purchase); }
	 

	@GetMapping("/sendEmailwithAttachment")
	public String sendEmailwithAttachment() {
		return emailService.sendEmailwithAttachment();
	}

}
