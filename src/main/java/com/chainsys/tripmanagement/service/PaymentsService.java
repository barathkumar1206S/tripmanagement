package com.chainsys.tripmanagement.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.tripmanagement.model.TripPayments;
import com.chainsys.tripmanagement.repo.TripPaymentsRepository;

@Service
public class PaymentsService {
	@Autowired
	private TripPaymentsRepository tPayRepo; 
	public List<TripPayments> getAllPayments(){
		List<TripPayments> tpaylist=tPayRepo.findAll();
		return tpaylist;
	}
	public TripPayments save(TripPayments trpay) {
		
		 return tPayRepo.save(trpay);
	}
	public TripPayments findById(int id) {
		return tPayRepo.findById(id);
	}
   public void deleteById(int id) {
	   tPayRepo.deleteById(id);
   }public TripPayments findByTripIdAndUserid(int tripId,int userId) {
	   return tPayRepo.findByTripIdAndUserId(tripId, userId);
   }
}
