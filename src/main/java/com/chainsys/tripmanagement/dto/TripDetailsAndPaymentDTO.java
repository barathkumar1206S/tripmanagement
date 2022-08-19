package com.chainsys.tripmanagement.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.tripmanagement.model.TripDetails;
import com.chainsys.tripmanagement.model.TripPayments;

public class TripDetailsAndPaymentDTO {
	@Autowired
	private TripDetails tripDetails;
	@Autowired
	private List<TripPayments> trippayments=new ArrayList<TripPayments>();
	public TripDetails getTripDetails() {
		return tripDetails;
	}
	public void setTripDetails(TripDetails tripDetails) {
		this.tripDetails = tripDetails;
	}
	public List<TripPayments> getTrippayments() {
		return trippayments;
	}
	public void addTripDetailsAndPayments(TripPayments tripPayment) {

		trippayments.add(tripPayment);
	
	}
	
	

}
