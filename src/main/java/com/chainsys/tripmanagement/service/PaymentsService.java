package com.chainsys.tripmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.pojo.TripPayments;
import com.chainsys.tripmanagement.repo.TripPaymentsRepository;

@Service
public class PaymentsService {
	@Autowired
	private TripPaymentsRepository tpayrepo; 
	
	public List<TripPayments> getallpayments(){
		List<TripPayments> tpaylist=tpayrepo.findAll();
		return tpaylist;
	}
	public TripPayments save(TripPayments trpay) {
		return tpayrepo.save(trpay);
	}
	public TripPayments findById(int id) {
		return tpayrepo.findById(id);
	}
   public void deleteById(int id) {
	   tpayrepo.deleteById(id);
   }
}
