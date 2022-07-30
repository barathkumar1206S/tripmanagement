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

import com.chainsys.tripmanagement.pojo.TripPackage;
import com.chainsys.tripmanagement.pojo.TripRegistration;
import com.chainsys.tripmanagement.service.PackageService;

@Controller
@RequestMapping("/package")
public class PackageController {
@Autowired
PackageService packservice;

@GetMapping("/getallpackages")
public String getpackage(Model model) {
	List<TripPackage> tpack=packservice.getallpackages();
	model.addAttribute("allpackage",tpack);
	return "list-package";
}
@GetMapping("/addpackageform")
public String showAddForm(Model model) {
	TripPackage thepack = new TripPackage();
	model.addAttribute("addpackage", thepack);
	return "add-package-form";
}
@PostMapping("/add")
public String addNewPackage(@ModelAttribute("addpackage") TripPackage thepack) {
	packservice.save(thepack);
	return "redirect:/package/getallpackage";
}
@GetMapping("/updateform")
public String showUpdateForm(@RequestParam("userid") int id, Model model) {
	TripPackage tpack =packservice.findByid(id) ;
	model.addAttribute("updatepackageform", tpack);
	return "update-package-form";
}

@PostMapping("/updatepackform")
public String updatepackage(@ModelAttribute("updatepack") TripPackage tpack) {
packservice.save(tpack);
	return "redirect:/package/getallpackage";
}
@GetMapping("/deletepack")
public String deletePackage(@RequestParam("userid") int id) {
	packservice.deleteByid(id);
	return "redirect:/registration/getallregistration";
}

}
