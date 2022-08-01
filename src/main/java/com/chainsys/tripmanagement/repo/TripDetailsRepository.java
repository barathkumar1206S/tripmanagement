package com.chainsys.tripmanagement.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.tripmanagement.model.TripDetails;

public interface TripDetailsRepository extends  CrudRepository<TripDetails, Integer> {
	TripDetails findById(int id);
	TripDetails save(TripDetails td);
	void deleteById(int id);
	List<TripDetails> findAll();
}
