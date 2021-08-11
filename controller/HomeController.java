package com.aravindhan.epark.controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.aravindhan.epark.Repository.DetailsRepository;
import com.aravindhan.epark.Repository.UserRepository;
import com.aravindhan.epark.model.AddDetails;
import com.aravindhan.epark.model.Login;
import com.aravindhan.epark.model.RegisterUser;

@Controller
public class HomeController {
	
	@Autowired
	private DetailsRepository details;
	/*
	 * @Autowired private AddDetails addDetails;
	 */
	@Autowired
	private UserRepository userRepositoy;
	
	@GetMapping("/")
	public String goUpload() {
		return "Home";
	}
	@PostMapping("/addDetails")
	public ModelAndView saveDetails(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("image") MultipartFile fileData) throws ServletException, Exception {
		AddDetails addDetails = new AddDetails();
		ModelAndView mv = new ModelAndView("Profile");
		try {
			addDetails.setImage(Base64.getEncoder().encodeToString(fileData.getBytes()));
		} 
		catch (IOException e) {
			mv.addObject("status ","Image file size Exceeded or not and image file try again");
		}
	addDetails.setPlotNumber(request.getParameter("plotNumber"));
	addDetails.setAddress(request.getParameter("address"));
	addDetails.setDescription(request.getParameter("description"));
	addDetails.setAmount(request.getParameter("amount"));
	addDetails.setEmail(request.getParameter("email"));
	
	details.save(addDetails);
	mv.addObject("status", "AD posted Successfully");
	return mv;
	}
	@PostMapping("/register")
	public ModelAndView register(@ModelAttribute RegisterUser regUser, @RequestParam("re_password") String password) {
		ModelAndView mv = new ModelAndView("Login");
		
		
		if(!password.equals(regUser.getPassword())) {
			mv.addObject("error", "Password mismatch Type again ");
			mv.setViewName("Register");
		}
		else
		userRepositoy.save(regUser);
		return mv;
	}
	
	@GetMapping("/view")
	public ModelAndView viewPlots() {
		ModelAndView mv = new ModelAndView("View");
		List<AddDetails> det = details.findAll();
		mv.addObject("list",det);
		return mv;
	}
	
	@GetMapping("/login")
	public String goToLogin() {
		return "Login";
	}
	@GetMapping("/register")
	public String goToRegister() {
		return "Register";
	}
	@GetMapping("/about")
	public String goToAbout() {
		return "About";
	}
	@GetMapping("/profile")
	public String goToProfile() {
		return "Profile";
	}

	@PostMapping("/login")
	public ModelAndView login(@ModelAttribute Login login) {
		ModelAndView mv = new ModelAndView();
		List <RegisterUser> l = userRepositoy.findByEmailAndPassword(login.getEmail(), login.getPassword());
			if(l.size()==0) {
				mv.addObject("error", "Incorrect password/ User not found");
				mv.setViewName("Login");
				return mv;
			}
			else {
			mv.setViewName("Profile");
			return mv;
			}
		}
}
