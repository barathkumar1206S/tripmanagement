package com.chainsys.tripmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.tripmanagement.model.TripPayments;
import com.chainsys.tripmanagement.model.TripRegistration;
import com.chainsys.tripmanagement.service.PaymentsService;

@Controller
public class PaymentsController {
@Autowired
 PaymentsService payService;

@GetMapping("/getallpayments")
public String getPayments(Model model) {
List<TripPayments> payList=payService.getAllPayments();
model.addAttribute("allpayments", payList);
return "list-payments";
}
@GetMapping("/addpaymentform")
public String showAddPaymentForm(Model model) {
	TripPayments addPay = new TripPayments();
	model.addAttribute("addpayments", addPay);
	return "add-payments-form";
}

@PostMapping("/addpay")
public String addPayments(@ModelAttribute("addpayments") TripPayments thePay) {
	payService.save(thePay);
	return "redirect:/getallpayments";
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
	return "redirect:/getallpayments";
}

@GetMapping("/deletepayment")
public String deletePaymentById(@RequestParam("paymentId") int id) {
	payService.deleteById(id);
	return "redirect:/getallpayments";
}

@GetMapping("/getpayments")
public String getpayments(@RequestParam("paymentId") int id, Model model) {
TripPayments tpayments = payService.findById(id);
	model.addAttribute("getpayments", tpayments);
	return "find-payment-id-form";
}
}
