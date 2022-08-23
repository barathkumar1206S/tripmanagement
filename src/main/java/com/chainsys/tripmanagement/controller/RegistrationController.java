package com.chainsys.tripmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import com.chainsys.tripmanagement.dto.TripRegistrationAndTripPaymentsDTO;
import com.chainsys.tripmanagement.model.TripRegistration;
import com.chainsys.tripmanagement.service.RegistrationService;
import com.chainsys.tripmanagement.validation.InvalidInputDataException;

@Controller
@RequestMapping("/registration")
public class RegistrationController {
	@Autowired
	public RegistrationService regService;

	@GetMapping("/getallregistrations")
	public String getRegistration(Model model) {
		List<TripRegistration> reglist = regService.getAllRegistration();
		model.addAttribute("allregistration", reglist);
		return "list-registration";
	}

	@GetMapping("/addregform")
	public String showAddForm(Model model) {
		TripRegistration thereg = new TripRegistration();
		model.addAttribute("addregister", thereg);
		return "add-register-form";
	}

	@PostMapping("/add")
	public String addRegister(@ModelAttribute("addregister") TripRegistration registrationTrip,Model model) {
		TripRegistration registrationTrip1 = regService.getByEmail(registrationTrip.getEmail());
	        try {
	            if (registrationTrip1 != null) {
	                throw new InvalidInputDataException("* Email already exists");
	            }
	        } catch (InvalidInputDataException exception) {
	            model.addAttribute("error", exception.getMessage());
	            model.addAttribute("message", "Try different email");
	            return "add-register-form";
	        }
	        registrationTrip1 = regService.getbyPhone(registrationTrip.getPhoneNumber());
	        try {
	            if (registrationTrip1 != null) {
	                throw new InvalidInputDataException("* PhoneNumber already exists");
	            }
	        } catch (InvalidInputDataException exception) {
	            model.addAttribute("error", exception.getMessage());
	            model.addAttribute("message", "Try different phone");
	            return "add-register-form";
	        }  
		regService.save(registrationTrip);
		return "redirect:/registration/getregistration?userId=" + registrationTrip.getUserId();	
	}

	@GetMapping("/updateregform")
	public String showUpdateForm(@RequestParam("userId") int userId, Model model) {
		TripRegistration treg = regService.findById(userId);
		model.addAttribute("updateregister", treg);
		return "update-registration-form";
	}

	@PostMapping("/update")
	public String updateRegistration(@ModelAttribute("updateregister") TripRegistration treg){
		regService.save(treg);
		return "redirect:/home/homepage";
	}

	

	@GetMapping("/deletereg")
	public String deleteRegistration(@RequestParam("userId") int id) {
		regService.deleteById(id);
		return "redirect:/registration/getallregistrations";
	}
	

	


	@GetMapping("/getregistration")
	public String getRegistration(@RequestParam("userId") int userId, Model model) {
		TripRegistration tpr = regService.findById(userId);
		model.addAttribute("getregistration", tpr);
		return "find-register-id-form";
	}

	@GetMapping("/getpaymentsusingregistrationid")
	public String getPaymentsByUserId(@RequestParam("userId") int id, Model model) {
		TripRegistrationAndTripPaymentsDTO tripRegistrationAndTripPaymentsDTO = regService
				.getTripDetailsAndPaymentDto(id);
		model.addAttribute("getpayments", tripRegistrationAndTripPaymentsDTO.getTripPayment());
		model.addAttribute("getregistration", tripRegistrationAndTripPaymentsDTO.getTripRegistration());
		return "registration-payments-details";
	}

	
}