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
@RequestMapping("/tripdetail")
public class TripDetailsController {
	@Autowired
	TripDetailsService tripDetailservice;
	
	@GetMapping("/getalltripdetails")
	public String getTripDetails(Model model) {
	List<TripDetails> triplist= tripDetailservice.getAllTripDetails();
	model.addAttribute("alltripdetails",triplist);
	return "list-tripdetails";
	}
	@GetMapping("/addtripdetailsform")
	public String addTripDetails(Model model) {
		TripDetails tdetails =new TripDetails();
		model.addAttribute("addtripdetails",tdetails);
		return "add-trip-details-form";
	}
	@PostMapping("/addtripdetail")
	public String addTrip(@ModelAttribute("addtripdetails") TripDetails tdetails) {
		 tripDetailservice.save(tdetails);
		return "redirect:/tripdetail/getalltripdetails";
	}
	
	@GetMapping("/updatetripdetailform")
	public String updateTripDetailsForm(@RequestParam("tripId") int id, Model model) {
		TripDetails updateTripDeatils=tripDetailservice.findById(id);
		model.addAttribute("updatetripdetailsform",updateTripDeatils);
		return "update-trip-details-form";
	}
	@PostMapping("/updatetripdetail")
	public String updateTripDetails(@ModelAttribute("updatetripdetailsform") TripDetails tripdetails) {
		tripDetailservice.save(tripdetails);
		return "redirect:/tripdetail/getalltripdetils";
	}
	
	@RequestMapping("/deletebyidform")
	public String deleteBytripId() {
		return "delete-by-tripid-form";
	}
	
	@GetMapping("/deletebyid")
	public String deleteTrip(@RequestParam("tripId") int id) {
		tripDetailservice.deleteById(id);
		return "redirect:/tripdetail/getalltripdetails";
	}
	@RequestMapping("/findbyidform")
	public String findByTripId() {
		return "find-by-tripid-form";
	}
	
	@GetMapping("/gettripdetails")
	public String gettripdetails(@RequestParam("tripId") int id, Model model) {
		TripDetails tripDetails=tripDetailservice.findById(id);
		model.addAttribute("gettripdetails",tripDetails);
		return "find-tripdeatils-id-form";
	}
	
	
}
