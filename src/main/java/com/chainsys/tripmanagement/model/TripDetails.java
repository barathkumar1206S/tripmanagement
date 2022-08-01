package com.chainsys.tripmanagement.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="trip")
public class TripDetails {
	@Id
	@Column(name="TRIP_ID")
	private int tripId;
	@Column(name="PACKAGE_ID")
	private int packageId;
	@Column(name="START_DATE")
	private Date startDate;
	@Column(name="END_DATE")
	private Date endDate;
	@Column(name="BOOKED_PASSENGERS")
	private int bookedPassengers;
	@Column(name="TRIP_STATUS")
	private String tripStatus;
	                
	         
	public int getTripId() {
		return tripId;
	}
	public void setTripId(int tripId) {
		this.tripId = tripId;
	}
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getBookedPassengers() {
		return bookedPassengers;
	}
	public void setBookedPassengers(int bookedPassengers) {
		this.bookedPassengers = bookedPassengers;
	}
	public String getTripStatus() {
		return tripStatus;
	}
	public void setTripStatus(String tripStatus) {
		this.tripStatus = tripStatus;
	}
	
	
	
	

}
