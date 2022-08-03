package com.chainsys.tripmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.model.TripPayments;
import com.chainsys.tripmanagement.repo.TripPaymentsRepository;

@Service
public class PaymentsService {
	@Autowired
	private TripPaymentsRepository tPayrRepo; 
	
	public List<TripPayments> getAllPayments(){
		List<TripPayments> tpaylist=tPayrRepo.findAll();
		return tpaylist;
	}
	public TripPayments save(TripPayments trpay) {
		return tPayrRepo.save(trpay);
	}
	public TripPayments findById(int id) {
		return tPayrRepo.findById(id);
	}
   public void deleteById(int id) {
	   tPayrRepo.deleteById(id);
   }
}
