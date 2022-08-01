package com.chainsys.tripmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.model.TripPackage;
import com.chainsys.tripmanagement.repo.TripPackagesRepository;

@Service
public class PackageService {
	@Autowired
	private TripPackagesRepository packrepo;
	
	public List<TripPackage> getAllPackages(){
		List<TripPackage> packlist=packrepo.findAll();
		return packlist;
	}
	public TripPackage save(TripPackage trpack) {
		return packrepo.save(trpack);
	}
	public TripPackage findById(int id) {
		return packrepo.findById(id);
	}
public void deleteById(int id) {
	packrepo.deleteById(id);
}
}
