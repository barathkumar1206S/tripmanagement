package com.chainsys.tripmanagement.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.tripmanagement.model.TripPayments;

public interface TripPaymentsRepository extends  CrudRepository<TripPayments, Integer> {
	
	TripPayments findById(int id);
	TripPayments save(TripPayments tpm);
	void deleteById(int id);
	List <TripPayments> findAll();
	List<TripPayments> findByTripId(int id);
	List<TripPayments> findByTripRegistrationUserId(int id);
	TripPayments findByTripIdAndUserId(int tripId,int userId);
}
