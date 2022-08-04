package com.chainsys.tripmanagement.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.tripmanagement.model.TripPayments;
import com.chainsys.tripmanagement.model.TripRegistration;

public class TripRegistrationAndTripPaymentsDTO {
	private TripRegistration tripRegistration;
	private List<TripPayments> tripPayment=new ArrayList<TripPayments>();

	
	public TripRegistration getTripRegistration() {
		return tripRegistration;
	}
	public void setTripRegistration(TripRegistration tripRegistration) {
		this.tripRegistration = tripRegistration;
	}
	public List<TripPayments> getTripPayment() {
		return tripPayment;
	}
	public void addTripRegistrationByTripPayments(TripPayments tripPayments) {
		tripPayment.add(tripPayments);
	}
}
