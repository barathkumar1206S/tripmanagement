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

import com.chainsys.tirpmanagement.dto.TripPackageAndTripDetailsDTO;
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
@GetMapping("/updatepackform")
public String showPackage(@RequestParam("packageId") int id, Model model) {
	TripPackage tpack =packService.findById(id) ;
	model.addAttribute("updatepackageform", tpack);
	return "update-package-form";
}

@PostMapping("/updatepackform")
public String updatePackage(@ModelAttribute("updatepackageform") TripPackage tpack) {
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

@GetMapping("/gettripdetailsusingpackageid")
public String getDetailsByPackageId(@RequestParam("packageId") int id, Model model)
{
	TripPackageAndTripDetailsDTO tripPackageAndTripDetailsDTO	= packService.tripPackageAndTripDetailsDTO(id);
    model.addAttribute("gettripdetails",tripPackageAndTripDetailsDTO.getTripDetails());
    model.addAttribute("gettrippackages",tripPackageAndTripDetailsDTO.getTripPackage());
    return "package-tripdetails";
}

@RequestMapping("/userloggedin")
public String tourPackages() {
	return "user-package";
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
