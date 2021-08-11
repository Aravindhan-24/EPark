package com.aravindhan.epark.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.aravindhan.epark.model.RegisterUser;

public interface UserRepository extends JpaRepository<RegisterUser, Integer>{

	@Query("from RegisterUser  where email= :mail and password =:pass")
	List<RegisterUser> findByEmailAndPassword(@Param("mail") String email, @Param("pass") String password);

}
