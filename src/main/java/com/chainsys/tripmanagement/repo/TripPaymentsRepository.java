package com.chainsys.tripmanagement.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.tripmanagement.model.TripPayments;

public interface TripPaymentsRepository extends  CrudRepository<TripPayments, Integer> {
	
	TripPayments findById(int id);
	TripPayments save(TripPayments tpm);
	void deleteById(int id);
	List <TripPayments> findAll();
}
