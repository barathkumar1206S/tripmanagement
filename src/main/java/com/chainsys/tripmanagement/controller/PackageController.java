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

import com.chainsys.tripmanagement.model.TripPackage;
import com.chainsys.tripmanagement.model.TripRegistration;
import com.chainsys.tripmanagement.service.PackageService;

@Controller
//@RequestMapping("/package")
public class PackageController {
@Autowired
PackageService packservice;

@GetMapping("/getAllPackages")
public String getpackage(Model model) {
	List<TripPackage> tpack=packservice.getAllPackages();
	model.addAttribute("allPackage",tpack);
	return "list-Package";
}
@GetMapping("/addPackageForm")
public String showAddForm(Model model) {
	TripPackage thepack = new TripPackage();
	model.addAttribute("addPackage", thepack);
	return "add-Package-Form";
}
@PostMapping("/add")
public String addPackage(@ModelAttribute("addPackage") TripPackage thepack) {
	packservice.save(thepack);
	return "redirect:/getAllPackages";
}
@GetMapping("/updateForm")
public String showPackage(@RequestParam("packageId") int id, Model model) {
	TripPackage tpack =packservice.findById(id) ;
	model.addAttribute("updatePackageForm", tpack);
	return "update-Package-Form";
}

@PostMapping("/updatePackForm")
public String updatePackage(@ModelAttribute("updatePack") TripPackage tpack) {
packservice.save(tpack);
	return "redirect:/getAllPackages";
}
@GetMapping("/deletePack")
public String deletePackage(@RequestParam("packageId") int id) {
	packservice.deleteById(id);
	return "redirect:/getAllPackages";
}

@RequestMapping("/userLoggedIn")
public String tourPackages() {
	return "user-Package";
}


@RequestMapping("/chennaiToLadakh")
public String chennaiToLadakhPackage() {
	return "chennai-to-ladakh";
}

@RequestMapping("/chennaiToKashmir")
public String chennaiToKashmirPackage() {
	return "chennai-to-kashmir";
}

@RequestMapping("/chennaiToMumbai")
public String chennaiToMumbai() {
	return "chennai-to-mumbai";
}
@RequestMapping("/chennaiToDelhi")
public String chennaiToDelhi() {
	return "chennai-to-delhi";
}
}
