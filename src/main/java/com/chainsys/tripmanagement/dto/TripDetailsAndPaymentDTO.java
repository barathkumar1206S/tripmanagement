package com.chainsys.tripmanagement.dto;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.tripmanagement.model.TripDetails;
import com.chainsys.tripmanagement.model.TripPayments;

public class TripDetailsAndPaymentDTO {
	@Autowired
	private TripDetails tripDetails;
	@Autowired
	private TripPayments tripPayments;
	
	public TripDetails getTripDetails() {
		return tripDetails;
	}
	public void setTripDetails(TripDetails tripDetails) {
		this.tripDetails = tripDetails;
	}
	public TripPayments getTripPayments() {
		return tripPayments;
	}
	public void setTripPayments(TripPayments tripPayments) {
		this.tripPayments = tripPayments;
	}
	

}
