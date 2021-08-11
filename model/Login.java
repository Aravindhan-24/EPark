package com.aravindhan.epark.model;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class Login {
	private String email;
	private String password;

}
