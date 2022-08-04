package com.chainsys.tripmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.controller.TripDetailsController;
import com.chainsys.tripmanagement.dto.TripDetailsAndPaymentDTO;
import com.chainsys.tripmanagement.model.TripDetails;
import com.chainsys.tripmanagement.model.TripPayments;
import com.chainsys.tripmanagement.repo.TripDetailsRepository;
import com.chainsys.tripmanagement.repo.TripPaymentsRepository;

@Service
public class TripDetailsService {
	@Autowired
	private TripDetailsRepository tripDetailsRepo;
	@Autowired
	private TripPaymentsRepository tripPaymentsRepo;

	public List<TripDetails> getAllTripDetails() {
		List<TripDetails> triplist = tripDetailsRepo.findAll();
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

	public TripDetailsAndPaymentDTO getTripPaymentsByTripDetails(int id) {
		TripDetails tripdetails = findById(id);
		TripDetailsAndPaymentDTO dto = new TripDetailsAndPaymentDTO();
		dto.setTripDetails(tripdetails);
		TripPayments tripPayments = tripPaymentsRepo.findByTripId(id);
		dto.setTripPayments(tripPayments);
		return dto;
	}

}
