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

import com.chainsys.tripmanagement.dto.TripDetailsAndPaymentDTO;
import com.chainsys.tripmanagement.model.TripDetails;
import com.chainsys.tripmanagement.model.TripPackage;
import com.chainsys.tripmanagement.service.PackageService;
import com.chainsys.tripmanagement.service.TripDetailsService;

@Controller
@RequestMapping("/tripdetail")
public class TripDetailsController {
	@Autowired
	TripDetailsService tripDetailservice;
	@Autowired
	private PackageService packageService;
	@GetMapping("/getalltripdetails")
	public String getTripDetails(Model model) {
	List<TripDetails> triplist= tripDetailservice.getAllTripDetails();
	model.addAttribute("alltripdetails",triplist);
	return "list-tripdetails";
	}
	@GetMapping("/addtripdetailsform")
	public String addTripDetails1(@RequestParam("packageid")int id,@RequestParam("userId")int userId,Model model) {
		TripDetails tdetails =new TripDetails();
		TripPackage trippackage=packageService.findById(id);
		tdetails.setPackageId(id);
		tdetails.setUserId(userId);
		tdetails.setStartDate(trippackage.getStartDate());
		tdetails.setEndDate(trippackage.getEndDate());
		model.addAttribute("addtripdetails",tdetails);
		return "add-trip-details-form";
	}
	@PostMapping("/addtripdetail")
	public String addTrip(@ModelAttribute("addtripdetails") TripDetails tDetails,Model model) {
		TripPackage trippackage=packageService.findById(tDetails.getPackageId());
		if(tDetails.getBookedPassengers()>trippackage.getMaxNoOfSeats()) {
			return "error-page";
		}
		else {
		tripDetailservice.save(tDetails);
		return "redirect:/payment/getpayments?tripId="+tDetails.getTripId()+"&userId="+tDetails.getUserId();
		}
	}
	
	@GetMapping("/addtripform")
	public String addNew(Model model) {
		TripDetails tripDetails=new TripDetails();
		model.addAttribute("addtripform",tripDetails);
		return  "add-trip-form";
	}
	@PostMapping("/addform")
	public String addTripForm(@ModelAttribute("addtripform") TripDetails tDetails,Model model) {
		tripDetailservice.save(tDetails);
		return "redirect:/tripdetail/getalltripdetails";
	}

	
	@GetMapping("/updatetripdetailform")
	public String updateTripDetailsForm(@RequestParam("tripId") int id, Model model) {
		TripDetails updateTripDeatils=tripDetailservice.findById(id);
		model.addAttribute("updatetripdetailsform",updateTripDeatils);
		return "update-trip-details-form";
	}
	@PostMapping("/updatetripdetail")
	public String updateTripDetails(@ModelAttribute("updatetripdetailsform") TripDetails tripDetail) {
		
		tripDetailservice.save(tripDetail);
		return "redirect:/tripdetail/getalltripdetails";
	}
	
//	@RequestMapping("/deletebyidform")
//	public String deleteBytripId() {
//		return "delete-by-tripid-form";
//	}
//	
	@GetMapping("/deletebyid")
	public String deleteTrip(@RequestParam("tripId") int id) {
		tripDetailservice.deleteById(id);
		return "redirect:/tripdetail/getalltripdetails";
	}
	

	@GetMapping("/gettripdetails")
	public String getTripDetail(@RequestParam("tripId") int id, Model model) {
		TripDetails tripDetails=tripDetailservice.findById(id);
		model.addAttribute("gettripdetail",tripDetails);
		return "find-tripdetails-id-form";
	}
	
	
	@GetMapping("/getpaymentdetailsbytripid")
	public String getPaymentIdByTripDetails(@RequestParam("id") int id ,Model model){
		TripDetailsAndPaymentDTO dto=tripDetailservice.getTripPaymentsByTripDetails(id);
		model.addAttribute("paymentdetail",dto.getTripPayments());
		model.addAttribute("tripdetail",dto.getTripDetails());
		return "payment-id-by-trip-details";
	}
}
