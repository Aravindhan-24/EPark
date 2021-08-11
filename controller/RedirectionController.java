package com.aravindhan.epark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RedirectionController {
	
	@GetMapping("/redirectTolinkedin")
	public String reDirectToLinkedIn() {
		return "redirect:http://www.linkedin.com";
	}

}
