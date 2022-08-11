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
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
@Entity
@Table(name="registration")
public class TripRegistration {
	@Id
	@SequenceGenerator(name="user_id", sequenceName="user_id", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="user_id")
	@Column(name="user_id")
	private int userId;
	
	@Column(name="first_name")
    private String firstName;
	 
	@Column(name="last_name")
	private String lastName;
	
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

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
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
