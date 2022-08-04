package com.chainsys.tripmanagement.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.tripmanagement.model.TripDetails;
import com.chainsys.tripmanagement.model.TripPackage;

public class TripPackageAndTripDetailsDTO {
	private TripPackage tripPackage;
	 private List<TripDetails> tripDetails =new ArrayList<TripDetails>();
 public TripPackage getTripPackage() {
		return tripPackage;
	}
	public void setTripPackage(TripPackage tripPackage) {
		this.tripPackage = tripPackage;
	}
	public List<TripDetails> getTripDetails() {
		return tripDetails;
	}
	 public void addTripPackageByTripDetails(TripDetails tripDetail) {
		 tripDetails.add(tripDetail);
	 }

}
