package com.chainsys.tripmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.model.TripRegistration;
import com.chainsys.tripmanagement.repo.TripRegistrationRepository;

@Service
public class RegistrationService {
	@Autowired
	private TripRegistrationRepository tripregistrationrepo;
	
	public List<TripRegistration> getAllRegistration(){
		List<TripRegistration> reglist=tripregistrationrepo.findAll();
		return reglist;
	}
	 public TripRegistration save(TripRegistration tpreg) {
		return tripregistrationrepo.save(tpreg);
	 }
	 public TripRegistration findById(int id) {
		 return tripregistrationrepo.findById(id);
	 }
	 public void deleteById(int id) {
		 tripregistrationrepo.deleteById(id);
	 }
	 
	

}
