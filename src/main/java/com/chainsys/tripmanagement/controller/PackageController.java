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

import com.chainsys.tripmanagement.dto.TripPackageAndTripDetailsDTO;
import com.chainsys.tripmanagement.model.TripPackage;
import com.chainsys.tripmanagement.service.PackageService;

@Controller
@RequestMapping("/package")
public class PackageController {

	public static final String LISTOFPACKAGES = "redirect:/package/getallpackages";

	@Autowired
	PackageService packService;

	@GetMapping("/getallpackages")
	public String getpackage(Model model) {
		List<TripPackage> tpack = packService.getAllPackages();
		model.addAttribute("allPackage", tpack);
		return "list-packages";
	}

	@GetMapping("/showpackages")
	public String showAllPackages(@RequestParam("userId") int userId, Model model) {
		model.addAttribute("userId", userId);
		return "show-packages";
	}

	@GetMapping("/addpackageform")
	public String showAddForm(Model model) {
		TripPackage thePack = new TripPackage();
		model.addAttribute("addPackage", thePack);
		return "add-package-form";
	}

	@PostMapping("/add")
	public String addPackage(@ModelAttribute("addPackage") TripPackage thePack) {

		packService.save(thePack);
		return LISTOFPACKAGES;
	}

	@GetMapping("/updatepackform")
	public String showPackage(@RequestParam("packageId") int id, Model model) {
		TripPackage tpack = packService.findById(id);
		model.addAttribute("updatepackageform", tpack);
		return "update-package-form";
	}

	@PostMapping("/updatepackform")
	public String updatePackage(@ModelAttribute("updatepackageform") TripPackage tpack) {

		packService.save(tpack);
		return LISTOFPACKAGES;
	}

	@GetMapping("/deletepack")
	public String deletePackage(@RequestParam("packageId") int id) {
		TripPackage tpack = packService.findById(id);
		if (tpack.getMaxNoOfSeats() > 0) {
			return "delete-errorpage";
		} else {
			packService.deleteById(id);
		}
		return LISTOFPACKAGES;
	}

	@GetMapping("/getpackagebyid")
	public String getPackageById(@RequestParam("packageId") int id, @RequestParam("userId") int userId, Model model) {
		TripPackage tpack = packService.findById(id);
		model.addAttribute("getpackbyid", tpack);
		model.addAttribute("packageId", id);
		model.addAttribute("userId", userId);
		if (tpack.getMaxNoOfSeats() < 0) {
			return "error-page";
		} else
			return "find-package-by-id-form";
	}

	@GetMapping("/getpackage")
	public String getAllPackages(@RequestParam("packageId") int id, Model model) {
		TripPackage tripPackage = packService.findById(id);
		model.addAttribute("getpackage", tripPackage);
		return "find-allPackage-by-id";
	}

	@GetMapping("/gettripdetailsusingpackageid")
	public String getDetailsByPackageId(@RequestParam("packageId") int id, Model model) {
		TripPackageAndTripDetailsDTO tripPackageAndTripDetailsDTO = packService.tripPackageAndTripDetailsDTO(id);
		model.addAttribute("gettripdetails", tripPackageAndTripDetailsDTO.getTripDetails());
		model.addAttribute("gettrippackages", tripPackageAndTripDetailsDTO.getTripPackage());
		return "package-tripdetails";
	}

}
