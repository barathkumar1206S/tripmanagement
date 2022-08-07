package com.chainsys.tripmanagement.model;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "payments")
public class TripPayments {
	@Id
	@SequenceGenerator(name="payment_id", sequenceName="payment_id", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="payment_id")
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
	

	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="TRIP_ID",nullable = false, insertable = false,updatable = false)
     
	private TripDetails tripdetails; 
	public TripDetails getTripdetails() {
		return tripdetails;
	}
	public void setTripdetails(TripDetails tripdetails) {
		this.tripdetails = tripdetails;
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="USER_ID", nullable= false,insertable = false,updatable = false)
	private TripRegistration tripRegistration;
	public TripRegistration getTripRegistration() {
		return tripRegistration;
	}
	public void setTripRegistration(TripRegistration tripRegistration) {
		this.tripRegistration = tripRegistration;
	}
	
	
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
