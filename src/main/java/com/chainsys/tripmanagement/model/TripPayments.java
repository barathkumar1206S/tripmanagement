package com.chainsys.tripmanagement.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "payments")
public class TripPayments {
	@Id
	@Column(name = "PAYMENT_ID")
	private int paymentId;
	@Column(name = "FROM_DATE")
	private Date fromDate;
	@Column(name = "PAYMENT_AMOUNT")
	private float paymentAmout;
	@Column(name = "TRIP_ID")
	private int tripId;
	@Column(name = "USER_ID")
	private int userId;
	
	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}
	public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	public float getPaymentAmout() {
		return paymentAmout;
	}
	public void setPaymentAmout(float paymentAmout) {
		this.paymentAmout = paymentAmout;
	}
	public int getTripId() {
		return tripId;
	}
	public void setTripId(int tripId) {
		this.tripId = tripId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}


}
