package com.chainsys.tripmanagement.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="trip")
public class TripDetails {
	private int trip_id;
	private int package_id;
	private Date start_date;
	private Date end_date;
	private int booked_passengers;
	private String trip_status;
	
	public int getTrip_id() {
		return trip_id;
	}
	public void setTrip_id(int trip_id) {
		this.trip_id = trip_id;
	}
	public int getPackage_id() {
		return package_id;
	}
	public void setPackage_id(int package_id) {
		this.package_id = package_id;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public int getBooked_passengers() {
		return booked_passengers;
	}
	public void setBooked_passengers(int booked_passengers) {
		this.booked_passengers = booked_passengers;
	}
	public String getTrip_status() {
		return trip_status;
	}
	public void setTrip_status(String trip_status) {
		this.trip_status = trip_status;
	}
	
	
	

}
