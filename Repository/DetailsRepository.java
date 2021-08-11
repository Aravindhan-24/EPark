package com.aravindhan.epark.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aravindhan.epark.model.AddDetails;


public interface DetailsRepository extends JpaRepository<AddDetails, Integer> {

}
