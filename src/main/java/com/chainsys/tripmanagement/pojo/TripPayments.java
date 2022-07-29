package com.chainsys.tripmanagement.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="payments")
public class TripPayments {
	@Id
	private int payment_id;
	private Date from_date;
	private float payment_amout;
	private int trip_id;
	private int user_id;
	
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public Date getFrom_date() {
		return from_date;
	}
	public void setFrom_date(Date from_date) {
		this.from_date = from_date;
	}
	public float getPayment_amout() {
		return payment_amout;
	}
	public void setPayment_amout(float payment_amout) {
		this.payment_amout = payment_amout;
	}
	public int getTrip_id() {
		return trip_id;
	}
	public void setTrip_id(int trip_id) {
		this.trip_id = trip_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	
	

}
