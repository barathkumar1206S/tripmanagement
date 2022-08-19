package com.chainsys.tripmanagement.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="trip")
public class TripDetails {
	@Id
	@SequenceGenerator(name="triip_id", sequenceName="triip_id", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="triip_id")
	@Column(name="TRIP_ID")
	private int tripId;
	
	@Column(name="PACKAGE_ID")
	private int packageId;
	
	@Column(name="USER_ID")
	private int userId;
	

	@Column(name="START_DATE")
	private Date startDate;
	
	
	@Column(name="END_DATE")
    private Date endDate;
	
	
	@Column(name="BOOKED_PASSENGERS")
   private int bookedPassengers;
	
	
	@Column(name="TRIP_STATUS")
	private String tripStatus;
	                
	@OneToMany(mappedBy="tripdetails",fetch=FetchType.LAZY)
	private List<TripPayments> trippayments;
	public List<TripPayments> getTrippayments() {
		return trippayments;
	}
	public void setTrippayments(List<TripPayments> trippayments) {
		this.trippayments = trippayments;
	}
	
	
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="PACKAGE_ID" ,nullable = false, insertable = false,updatable = false)
	 private TripPackage tripPackage;
	
	
	public TripPackage getTripPackage() {
		return tripPackage;
	}
	public void setTripPackage(TripPackage tripPackage) {
		this.tripPackage = tripPackage;
	}
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
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
