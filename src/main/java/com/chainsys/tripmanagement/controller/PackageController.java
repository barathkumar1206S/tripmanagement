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
@RequestMapping("/package")
public class PackageController {
@Autowired
PackageService packService;

@GetMapping("/getallpackages")
public String getpackage(Model model) {
	List<TripPackage> tpack=packService.getAllPackages();
	model.addAttribute("allPackage",tpack);
	return "list-packages";
}
@GetMapping("/addpackageform")
public String showAddForm(Model model) {
	TripPackage thepack = new TripPackage();
	model.addAttribute("addPackage", thepack);
	return "add-package-form";
}
@PostMapping("/add")
public String addPackage(@ModelAttribute("addPackage") TripPackage thepack) {
	packService.save(thepack);
	return "redirect:/package/getallpackages";
}
@GetMapping("/updateform")
public String showPackage(@RequestParam("packageId") int id, Model model) {
	TripPackage tpack =packService.findById(id) ;
	model.addAttribute("updatePackageForm", tpack);
	return "update-package-form";
}

@PostMapping("/updatepackform")
public String updatePackage(@ModelAttribute("updatePack") TripPackage tpack) {
	packService.save(tpack);
	return "redirect:/package/getallpackages";
}
@GetMapping("/deletepack")
public String deletePackage(@RequestParam("packageId") int id) {
	packService.deleteById(id);
	return "redirect:/package/getallpackages";
}

@GetMapping("/findbyidpackform")
public String findById() {
	return "find-by-packid-form";
}

@GetMapping("/getpackagebyid")
public String getPackageById(@RequestParam("packageId") int id, Model model) {
	TripPackage tpack =packService.findById(id);
	model.addAttribute("getpackbyid",tpack);
	return "find-package-by-id-form";
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
