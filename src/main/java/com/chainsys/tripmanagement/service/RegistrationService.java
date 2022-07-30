package com.chainsys.tripmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.pojo.TripRegistration;
import com.chainsys.tripmanagement.repo.TripRegistrationRepository;

@Service
public class RegistrationService {
	@Autowired
	private TripRegistrationRepository trrrepo;
	
	public List<TripRegistration> getallregistration(){
		List<TripRegistration> reglist=trrrepo.findAll();
		return reglist;
	}
	 public TripRegistration save(TripRegistration tpreg) {
		return trrrepo.save(tpreg);
	 }
	 public TripRegistration findById(int id) {
		 return trrrepo.findById(id);
	 }
	 public void deleteByid(int id) {
		 trrrepo.deleteById(id);
	 }
	

}
