package com.chainsys.tripmanagement.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.businesslogic.Logic;
import com.chainsys.tripmanagement.dto.TripDetailsAndPaymentDTO;
import com.chainsys.tripmanagement.model.TripDetails;
import com.chainsys.tripmanagement.model.TripPackage;
import com.chainsys.tripmanagement.model.TripPayments;
import com.chainsys.tripmanagement.repo.TripDetailsRepository;
import com.chainsys.tripmanagement.repo.TripPaymentsRepository;

@Service
public class TripDetailsService {
	@Autowired
	private TripDetailsRepository tripDetailsRepo;
	@Autowired
	private TripPaymentsRepository tripPaymentsRepo;
	@Autowired
	private PaymentsService paymentsService;
	@Autowired
	private PackageService packageService;
	public List<TripDetails> getAllTripDetails() {
		return tripDetailsRepo.findAll();
	}

	public TripDetails save(TripDetails tpd) {
		TripDetails tripDetails= tripDetailsRepo.save(tpd);
		TripPayments tripPayments =new TripPayments();
		tripPayments.setTripId(tpd.getTripId());
		tripPayments.setUserId(tpd.getUserId());
		TripPackage tripPackage=packageService.findById(tpd.getPackageId());
		tripPayments.setPaymentAmout((float)(Logic.paymentAmountCalculation(tpd.getBookedPassengers(), tripPackage.getAmount())));
		tripPayments.setFromDate(Logic.getInstanceDate());
		paymentsService.save(tripPayments);
		
		
		TripPackage  tripPackageDetail=packageService.findById(tpd.getPackageId());
		tripPackageDetail.setMaxNoOfSeats(tripPackageDetail.getMaxNoOfSeats()-tpd.getBookedPassengers());
		packageService.save(tripPackageDetail);
		return tripDetails;
	}

	public TripDetails findById(int id) {
		return tripDetailsRepo.findById(id);

	}
	
	


	public void deleteById(int id) {
			tripDetailsRepo.deleteById(id);
	}
	public TripDetailsAndPaymentDTO getTripPaymentsByTripDetails(int id) {
		TripDetails tripdetails = findById(id);
		TripDetailsAndPaymentDTO dto = new TripDetailsAndPaymentDTO();
		dto.setTripDetails(tripdetails);
		List<TripPayments> trippayments=tripPaymentsRepo.findByTripId(id);
		Iterator<TripPayments> itr=trippayments.iterator();
		while(itr.hasNext())
		{
			dto.addTripDetailsAndPayments(itr.next());
		}
		return dto;
	}

	public List<TripDetails> findUserById(int userId) {
		return tripDetailsRepo.findByUserId(userId);
	}
	

}
