package com.chainsys.tripmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.model.TripRegistration;
import com.chainsys.tripmanagement.repo.TripRegistrationRepository;

@Service
public class RegistrationService {
	@Autowired
	private TripRegistrationRepository tripRegistrationRepo;
	
	public List<TripRegistration> getAllRegistration(){
		List<TripRegistration> reglist=tripRegistrationRepo.findAll();
		return reglist;
	}
	 public TripRegistration save(TripRegistration tpreg) {
		return tripRegistrationRepo.save(tpreg);
	 }
	 public TripRegistration findById(int id) {
		 return tripRegistrationRepo.findById(id);
	 }
	 public void deleteById(int id) {
		 tripRegistrationRepo.deleteById(id);
	 }
	 
	

}
