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
	public RegistrationService regservice;

	@GetMapping("/getAllRegistrations")
	public String getRegistration(Model model) {
		List<TripRegistration> reglist = regservice.getAllRegistration();
		model.addAttribute("allRegistration", reglist);
		return "list-registration";
	}

	@GetMapping("/addregform")
	public String showAddForm(Model model) {
		TripRegistration thereg = new TripRegistration();
		model.addAttribute("addRegister", thereg);
		return "add-register-form";
	}

	@PostMapping("/add")
	public String addRegister(@ModelAttribute("addRegister") TripRegistration thereg) {
		regservice.save(thereg);
		return "redirect:/registration/getAllRegistrations";
	}

	@GetMapping("/updateregform")
	public String showUpdateForm(@RequestParam("userId") int id, Model model) {
		TripRegistration treg = regservice.findById(id);
		model.addAttribute("updateRegister", treg);
		return "update-registration-form";
	}

	@PostMapping("/update")
	public String updateRegistration(@ModelAttribute("updateRegister") TripRegistration treg) {
		regservice.save(treg);
		return "redirect:/registration/getAllRegistrations";
	}

	@GetMapping("/deleteReg")
	public String deleteRegistration(@RequestParam("userId") int id) {
		regservice.deleteById(id);
		return "redirect:/registration/getAllRegistrations";
	}

	@RequestMapping("/findById")
	public String findById() {
		return "find-by-id-form";
	}
	@GetMapping("/getRegistration")
	public String getRegistration(@RequestParam("userId") int id, Model model) {
	TripRegistration tpr = regservice.findById(id);
		model.addAttribute("getRegistration", tpr);
		return "find-register-id-form";
	}

}
