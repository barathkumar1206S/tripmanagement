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
import com.chainsys.tripmanagement.model.TripPayments;
import com.chainsys.tripmanagement.service.PaymentsService;
import com.chainsys.tripmanagement.service.TripDetailsService;

@Controller
@RequestMapping("/payment")
public class PaymentsController {
@Autowired
 PaymentsService payService;
@Autowired
private TripDetailsService tripDetailsService;
@GetMapping("/getallpayments")
public String getPayments(Model model) {
List<TripPayments> payList=payService.getAllPayments();
model.addAttribute("allpayments", payList);
return "list-payments";
}
@GetMapping("/addpaymentform")
public String showAddPaymentForm(Model model) {
	TripPayments addPay = new TripPayments();
	model.addAttribute("addpayments",  addPay);
	return "add-payments-form";
}

@PostMapping("/addpay")
public String addPayments(@ModelAttribute("addpayments") TripPayments thePay) {
	
	payService.save(thePay);
	return "redirect:/payment/getallpayments";
}

@GetMapping("/updatepaymentform")
public String showUpdatePayForm(@RequestParam("paymentId") int id, Model model) {
	TripPayments tpay = payService.findById(id);
	model.addAttribute("updatepayments", tpay);
	return "update-payment-form";
}

@PostMapping("/updatepayment")
public String updatepayment(@ModelAttribute("updatepayments") TripPayments tpay) {
	
	payService.save(tpay);
	return "redirect:/payment/getallpayments";
}

@GetMapping("/deletepayment")
public String deletePaymentById(@RequestParam("paymentId") int id) {
	payService.deleteById(id);
	return "redirect:/payment/getallpayments";
}

@GetMapping("/getpayments")
public String getPayment(@RequestParam("tripId") int tripid,@RequestParam("userId") int userId, Model model) {
TripPayments tpayments = payService.findByTripIdAndUserid(tripid, userId);
	model.addAttribute("getpayments",tpayments);
	TripDetails tripDetails=tripDetailsService.findById(tripid);
	tpayments.setTripId(tripid);
	tpayments.setUserId(tripDetails.getUserId());
	tpayments.setFromDate(tpayments.getFromDate());
	return "find-payment-id-form";
}

@GetMapping("/getpaymentbyid")
public String getPaymentsById(@RequestParam("paymentId") int id ,Model model)
{
   TripPayments tripPayments=payService.findById(id);
model.addAttribute("getpayment",tripPayments);
   return "find-allPayments-by-id";        
}
@GetMapping("/paymentrecived")
public String getPaymentRecived() {
	return "payment-received-form";
	
}
}
