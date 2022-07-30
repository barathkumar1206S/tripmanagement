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

import com.chainsys.tripmanagement.pojo.TripRegistration;
import com.chainsys.tripmanagement.service.RegistrationService;
@Controller
@RequestMapping("/registrtion")
public class RegistrationController {
	@Autowired
	RegistrationService regservice;
	
	@GetMapping("/getallregistration")
	public String getRegistration(Model model) {
		List<TripRegistration> reglist=regservice.getallregistration();
model.addAttribute("allregistration",reglist);
return "list-registration";
	}
	@GetMapping("/addregform")
	public String showAddForm(Model model) {
		TripRegistration thereg = new TripRegistration();
		model.addAttribute("addregister", thereg);
		return "add-register-form";
	}
	@PostMapping("/add")
	public String addNewRegister(@ModelAttribute("addregister") TripRegistration thereg) {
		regservice.save(thereg);
		return "redirect:/registartion/getallregistration";
	}
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("userid") int id, Model model) {
		TripRegistration treg = regservice.findById(id);
		model.addAttribute("updateregistartion", treg);
		return "update-registration-form";
	}

	@PostMapping("/updateregform")
	public String updateregistration(@ModelAttribute("updateregister") TripRegistration treg) {
		regservice.save(treg);
		return "redirect:/registration/getallregistration";
	}
	@GetMapping("/deletereg")
	public String deleteRegistration(@RequestParam("userid") int id) {
		regservice.deleteByid(id);
		return "redirect:/registration/getallregistration";
	}

//	@GetMapping("/getregistration")
//	public String getRegistration(@RequestParam("id") int id, Model model) {
//	TripRegistration tpr = regservice.findById(id);
//		model.addAttribute("getRegistration", tpr);
//		return "find-doctor-id-form";
//	}

	

}
