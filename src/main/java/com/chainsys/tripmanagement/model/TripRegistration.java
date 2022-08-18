package com.chainsys.tripmanagement.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="registration")
public class TripRegistration {
	@Id
	@SequenceGenerator(name="users_id", sequenceName="users_id", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="users_id")
	@Column(name="user_id")
	private int userId;
	
	@Column(name="user_name")
    private String userName;
	 
	


	@Column(name="gender")
	
	private String gender;
	
	@Column(name="dob")
	private Date dob;
	
	@Column(name="phone_number")
	private String phoneNumber;
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private  String password;
	
	@Column(name="role")
	private String role;
	
	@OneToMany(mappedBy="tripRegistration",fetch=FetchType.LAZY)
	private List<TripPayments> tripPayment;
	

	public List<TripPayments> getTripPayments() {
		return tripPayment;
	}

	public void setTripPayments(List<TripPayments> tripPayments) {
		this.tripPayment = tripPayments;
	}
	
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public List<TripPayments> getTripPayment() {
		return tripPayment;
	}

	public void setTripPayment(List<TripPayments> tripPayment) {
		this.tripPayment = tripPayment;
	}

	

	
}
