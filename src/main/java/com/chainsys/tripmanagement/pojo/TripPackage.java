package com.chainsys.tripmanagement.pojo;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="package")
public class TripPackage {
	private int package_id;
	private String boarding_place;
	private String destination;
	private String package_type;
	private double amount;
	private int no_of_days;
	private int max_no_of_seats;
	
	public int getPackage_id() {
		return package_id;
	}
	public void setPackage_id(int package_id) {
		this.package_id = package_id;
	}
	public String getBoarding_place() {
		return boarding_place;
	}
	public void setBoarding_place(String boarding_place) {
		this.boarding_place = boarding_place;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getPackage_type() {
		return package_type;
	}
	public void setPackage_type(String package_type) {
		this.package_type = package_type;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getNo_of_days() {
		return no_of_days;
	}
	public void setNo_of_days(int no_of_days) {
		this.no_of_days = no_of_days;
	}
	public int getMax_no_of_seats() {
		return max_no_of_seats;
	}
	public void setMax_no_of_seats(int max_no_of_seats) {
		this.max_no_of_seats = max_no_of_seats;
	}
	
	
}
