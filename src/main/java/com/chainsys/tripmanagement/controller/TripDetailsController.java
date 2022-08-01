package com.chainsys.tripmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.tripmanagement.model.TripDetails;
import com.chainsys.tripmanagement.service.TripDetailsService;

@Controller
@RequestMapping("/tripdetails")
public class TripDetailsController {
	@Autowired
	TripDetailsService tdservice;
	
	@GetMapping("/getalltripdetails")
	public String getTripDetails(Model model) {
	List<TripDetails> triplist=tdservice.getAllTripDetails();
	model.addAttribute("alltripdetails",triplist);
	return "list-tripdetails";
	}
	@GetMapping("/addtripdetailsform")
	public String showTripDetails(Model model) {
		TripDetails td =new TripDetails();
		model.addAttribute("addtripdetails",td);
		return "add-trip-details-form";
	}
	@PostMapping("/add")
	public String addTrip(@ModelAttribute("addtripdetails") TripDetails td) {
		tdservice.save(td);
		return "redirect:/tripdetails/getallTripdetails";
	}
	
	
}
