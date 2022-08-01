package com.chainsys.tripmanagement.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.tripmanagement.model.TripPackage;

public interface TripPackagesRepository extends CrudRepository<TripPackage, Integer> {
	TripPackage findById(int id);

	TripPackage save(TripPackage tp);

	void deleteById(int id);

	List<TripPackage> findAll();

}
