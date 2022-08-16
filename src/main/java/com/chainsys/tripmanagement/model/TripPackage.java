package com.chainsys.tripmanagement.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "package")
public class TripPackage {
	@Id
	@Column(name = "package_id")
	private int packageId;
	
	@Column(name = "boarding_place")
	private String boardingPlace;
	
	@Column(name = "destination")
	private String destination;
	
	
	@Column(name = "package_type")
	private String packageType;
	
	
	@Column(name = "amount")
    private double amount;
	
	
	@Column(name = "no_of_days")
    private int noOfDays;
	
	
	@Column(name = "max_no_of_seats")
    private int maxNoOfSeats;
	
	
	@Column (name="start_date")
    private Date startDate;
	
	
	@Column (name="end_date")
    private Date endDate;
	
	
	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	@OneToMany(mappedBy="tripPackage",fetch=FetchType.LAZY)
	private List<TripDetails> tripDetails;

	public List<TripDetails> getTripDetails() {
		return tripDetails;
	}

	public void setTripDetails(List<TripDetails> tripDetails) {
		this.tripDetails = tripDetails;
	}

	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public String getBoardingPlace() {
		return boardingPlace;
	}
	public void setBoardingPlace(String boardingPlace) {
		this.boardingPlace = boardingPlace;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getPackageType() {
		return packageType;
	}
	public void setPackageType(String packageType) {
		this.packageType = packageType;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getNoOfDays() {
		return noOfDays;
	}
	public void setNoOfDays(int noOfDays) {
		this.noOfDays = noOfDays;
	}
	public int getMaxNoOfSeats() {
		return maxNoOfSeats;
	}
	public void setMaxNoOfSeats(int maxNoOfSeats) {
		this.maxNoOfSeats = maxNoOfSeats;
	}

	
}
