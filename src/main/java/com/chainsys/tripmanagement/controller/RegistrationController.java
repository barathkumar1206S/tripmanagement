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

import com.chainsys.tripmanagement.model.TripRegistration;
import com.chainsys.tripmanagement.service.RegistrationService;

@Controller
@RequestMapping("/registration")
public class RegistrationController {
	@Autowired
	public RegistrationService regService;

	@GetMapping("/getallregistrations")
	public String getRegistration(Model model) {
		List<TripRegistration> reglist =  regService.getAllRegistration();
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
	public String addRegister(@ModelAttribute("addregister") TripRegistration thereg) {
		 regService.save(thereg);
		return "redirect:/registration/getallregistrations";
	}

	@GetMapping("/updateregform")
	public String showUpdateForm(@RequestParam("userId") int id, Model model) {
		TripRegistration treg =  regService.findById(id);
		model.addAttribute("updateregister", treg);
		return "update-registration-form";
	}

	@PostMapping("/update")
	public String updateRegistration(@ModelAttribute("updateregister") TripRegistration treg) {
		 regService.save(treg);
		return "redirect:/registration/getallregistrations";
	}

	@GetMapping("/deletereg")
	public String deleteRegistration(@RequestParam("userId") int id) {
		 regService.deleteById(id);
		return "redirect:/registration/getallregistrations";
	}

	@RequestMapping("/findbyuserid")
	public String findById() {
		return "find-by-userid-form";
	}
	@GetMapping("/getregistration")
	public String getRegistration(@RequestParam("userId") int id, Model model) {
	TripRegistration tpr =  regService.findById(id);
		model.addAttribute("getregistration", tpr);
		return "find-register-id-form";
	}

}
