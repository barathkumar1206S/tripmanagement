package com.chainsys.tripmanagement.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.dto.TripDetailsAndPaymentDTO;
import com.chainsys.tripmanagement.dto.TripRegistrationAndTripPaymentsDTO;
import com.chainsys.tripmanagement.model.TripPayments;
import com.chainsys.tripmanagement.model.TripRegistration;
import com.chainsys.tripmanagement.repo.TripPaymentsRepository;
import com.chainsys.tripmanagement.repo.TripRegistrationRepository;

@Service
public class RegistrationService {
	@Autowired
	private TripRegistrationRepository tripRegistrationRepository;
	@Autowired 
	private TripPaymentsRepository tripPaymentsRepository;
	
	public List<TripRegistration> getAllRegistration(){
		List<TripRegistration> reglist=tripRegistrationRepository.findAll();
		return reglist;
	}
	 public TripRegistration save(TripRegistration tpreg) {
		return tripRegistrationRepository.save(tpreg);
	 }
	 public TripRegistration findById(int id) {
		 return tripRegistrationRepository.findById(id);
	 }
	 public void deleteById(int id) {
		 tripRegistrationRepository.deleteById(id);
	 }
	 
	public TripRegistrationAndTripPaymentsDTO getTripDetailsAndPaymentDto(int id) {
		TripRegistration tripRegistration=findById(id);
		TripRegistrationAndTripPaymentsDTO tripRegistrationAndTripPaymentsDTO=new TripRegistrationAndTripPaymentsDTO();
		tripRegistrationAndTripPaymentsDTO.setTripRegistration(tripRegistration);
		List<TripPayments> tripPaymentList=tripPaymentsRepository.findByTripRegistrationUserId(id);
		Iterator<TripPayments> itr=tripPaymentList.iterator();
		while(itr.hasNext()) {
			tripRegistrationAndTripPaymentsDTO.addTripRegistrationByTripPayments((TripPayments) itr.next());		
		}
		return tripRegistrationAndTripPaymentsDTO;
	} 

}
