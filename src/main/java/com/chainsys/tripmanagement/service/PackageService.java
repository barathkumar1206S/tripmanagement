package com.chainsys.tripmanagement.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.dto.TripPackageAndTripDetailsDTO;
import com.chainsys.tripmanagement.model.TripDetails;
import com.chainsys.tripmanagement.model.TripPackage;
import com.chainsys.tripmanagement.repo.TripDetailsRepository;
import com.chainsys.tripmanagement.repo.TripPackagesRepository;

@Service
public class PackageService {
	@Autowired
	private TripPackagesRepository packRepository;
	@Autowired
	private TripDetailsRepository tripDetailsRepository;
	
	public List<TripPackage> getAllPackages(){
		List<TripPackage> packlist= packRepository.findAll();
		return packlist;
	}
	public TripPackage save(TripPackage trpack) {
		return  packRepository.save(trpack);
		
	}
	public TripPackage findById(int id) {
		return packRepository.findById(id);
	}
public void deleteById(int id) {
	packRepository.deleteById(id);
}

public TripPackageAndTripDetailsDTO tripPackageAndTripDetailsDTO(int id) {
	TripPackage tripPackage=findById(id);
	TripPackageAndTripDetailsDTO tripPackageAndTripDetailsDTO = new TripPackageAndTripDetailsDTO();
	tripPackageAndTripDetailsDTO.setTripPackage(tripPackage);
	List<TripDetails> tripDetailsList=tripDetailsRepository.findByTripPackagePackageId(id);
	Iterator<TripDetails> itr=tripDetailsList.iterator();
	while(itr.hasNext()) {
		tripPackageAndTripDetailsDTO.addTripPackageByTripDetails((TripDetails) itr.next());
	}
	return tripPackageAndTripDetailsDTO;
}
}
