package com.chainsys.tripmanagement.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.tripmanagement.pojo.TripRegistration;

public interface TripRegistrationRepository extends  CrudRepository<TripRegistration, Integer> {
	TripRegistration findById(int id);
	TripRegistration save(TripRegistration tpm);
	void deleteById(int id);
	List <TripRegistration> findAll();
}
