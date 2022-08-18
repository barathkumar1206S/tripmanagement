package com.chainsys.tripmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.tripmanagement.model.Login;
import com.chainsys.tripmanagement.model.TripRegistration;
import com.chainsys.tripmanagement.service.RegistrationService;

@Controller
@RequestMapping("/home")
public class HomePageController {
	@Autowired
	private RegistrationService registrationService;
//	@GetMapping("homepage")
//	public String getHome(Model model) {
//		return "webpage";
//		
//	}
	@GetMapping("homepage")
	public String getHomeDemo(Model model) {
		return "homepage-demo";
		
	}
	
	@GetMapping("/login")
	public String loginPage(Model model) {
		Login logIn = new Login();
		model.addAttribute("login", logIn);
		return "user-login-page";
	}

	@GetMapping("/newuser")
	public String getfirstPage(Model mode) {
		return "redirect:/registration/addregform";
	}

//	@GetMapping("/userpackage")
//	public String getPackageList(Model model) {
//		return "redirect/package/getallpackages";
//	}

	@PostMapping("/userpage")
	public String userPage(@ModelAttribute("login") Login login, Model model) {
		TripRegistration tripRegistration = registrationService.findById(login.getUserId());
		if (tripRegistration.getPassword().equals(login.getPassword())) {
			if (tripRegistration.getRole().equalsIgnoreCase("user")) {
			//	System.out.println("somthing");
				return "redirect:/package/showpackages?id="+login.getUserId();

			} else if (tripRegistration.getRole().equalsIgnoreCase("admin")) {
				return "redirect:/home/adminform";
			}
		} else {
			model.addAttribute("message", "Something Wrong ");
			return "login-page";
		}
		return "login-page";

	}
	@GetMapping("/addpayment")
	public String addPayment(Model model) {
		return "redirect:/payment/addpaymentform";
	}
	
	@GetMapping("/adminform")
    public String getIndex(Model model) {
        return "index";
    }

}