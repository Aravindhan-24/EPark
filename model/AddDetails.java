package com.aravindhan.epark.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
@Entity
public class AddDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String plotNumber;
	private String address;
	private String description;
	private String email;
	private String amount;
	@Lob
	@Column(columnDefinition = "MEDIUMBLOB")
	private String image;
}
