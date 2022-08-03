package com.chainsys.tripmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.controller.TripDetailsController;
import com.chainsys.tripmanagement.model.TripDetails;
import com.chainsys.tripmanagement.repo.TripDetailsRepository;

@Service
public class TripDetailsService {
@Autowired
private TripDetailsRepository tripDetailsRepo;

public List<TripDetails> getAllTripDetails()
{ 
	List<TripDetails>triplist = tripDetailsRepo.findAll();
	return triplist;
}
public TripDetails save(TripDetails tpd) {
	return tripDetailsRepo.save(tpd);
	
}
public TripDetails findById(int id) {
	return tripDetailsRepo.findById(id);
	
}
public void deleteById(int id) {
	tripDetailsRepo.deleteById(id);
}

}
