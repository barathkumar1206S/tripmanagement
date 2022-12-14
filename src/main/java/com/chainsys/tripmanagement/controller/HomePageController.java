package com.chainsys.tripmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.tripmanagement.validation.InvalidInputDataException;

import com.chainsys.tripmanagement.model.Login;
import com.chainsys.tripmanagement.model.TripRegistration;
import com.chainsys.tripmanagement.service.RegistrationService;

@Controller
@RequestMapping("/home")
public class HomePageController {
	public static final String USERLOGINPAGE = "user-login-page";
	@Autowired
	private RegistrationService registrationService;
	@GetMapping("homepage")
	public String getHome() {
		return "webpage";
		
	}
	
	
	@GetMapping("/login")
	public String loginPage(Model model) {
		Login logIn = new Login();
		model.addAttribute("login", logIn);
		return USERLOGINPAGE;
	}

	@GetMapping("/newuser")
	public String getfirstPage(Model model) {
		return "redirect:/registration/addregform";
	}


	@PostMapping("/userpage")
	public String userPage(@ModelAttribute("login") Login login, Model model) {
		TripRegistration tripRegistration = registrationService.findByEmailAndPassword(login.getEmail(), login.getPassword());
		try {
			if(tripRegistration==null)
				throw new InvalidInputDataException("There is no Matching data");
	} 
		catch (InvalidInputDataException exp) {
		model.addAttribute("message", "Email or password Mismatch");
		return USERLOGINPAGE;
	}

		
		model.addAttribute("tripRegistration",tripRegistration.getUserId());
        if (tripRegistration.getEmail().equals(login.getEmail())) 
		{
			if(tripRegistration.getPassword().equals(login.getPassword())) 
			{
				
			
			if (tripRegistration.getRole().equalsIgnoreCase("user")) 
			{
				int id=tripRegistration.getUserId();
				return "redirect:/home/userHomeform?userId="+id;

			} else if (tripRegistration.getRole().equalsIgnoreCase("admin")) {
				int id=tripRegistration.getUserId();
				return "redirect:/home/adminHomeform?userId="+id;
			}
			}}
		 else {
		model.addAttribute("message", "Something Wrong ");
}
        return  USERLOGINPAGE;
}
	@GetMapping("/addpayment")
	public String addPayment(Model model) {
		return "redirect:/payment/addpaymentform";
	}
	
	@GetMapping("/adminHomeform")
    public String getAdminHomePage(@RequestParam("userId")int userId,Model model) {
      model.addAttribute("userId",userId);
		return "admin-homepage";
    }
	
	@GetMapping("/userHomeform")
	  public String getUserHomePage(@RequestParam("userId")int userId,Model model) {
	      model.addAttribute("userId",userId);
	      return "userhome-page";
	}

	@GetMapping("/adminform")
    public String getIndex(Model model) {
        return "index";
    }
	@GetMapping("/contactus")
	public String getContactus(Model model) {
		return "contactus-page";
	}

}