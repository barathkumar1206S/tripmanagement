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
 PaymentsService payservice;

@GetMapping("/getallpayments")
public String getPayments(Model model) {
List<TripPayments> paylist=payservice.getAllPayments();
model.addAttribute("allpayments", paylist);
return "list-payments";
}
//@GetMapping("/addrform")
//public String showAddForm(Model model) {
//	TripRegistration thereg = new TripRegistration();
//	model.addAttribute("addregister", thereg);
//	return "add-register-form";
//}
//
//@PostMapping("/add")
//public String addNewRegister(@ModelAttribute("addregister") TripRegistration thereg) {
//	regservice.save(thereg);
//	return "redirect:/getallregistration";
//}
//
//@GetMapping("/updateform")
//public String showUpdateForm(@RequestParam("user_id") int id, Model model) {
//	TripRegistration treg = regservice.findById(id);
//	model.addAttribute("updateregister", treg);
//	return "update-registration-form";
//}
//
//@PostMapping("/updateregform")
//public String updateregistration(@ModelAttribute("updateregister") TripRegistration treg) {
//	regservice.save(treg);
//	return "redirect:/getallregistration";
//}
//
//@GetMapping("/deletereg")
//public String deleteRegistration(@RequestParam("user_id") int id) {
//	regservice.deleteByid(id);
//	return "redirect:/getallregistration";
//}
//
//@GetMapping("/getregistration")
//public String getRegistration(@RequestParam("id") int id, Model model) {
//TripRegistration tpr = regservice.findById(id);
//	model.addAttribute("getregistration", tpr);
//	return "find-register-id-form";
//}
}
