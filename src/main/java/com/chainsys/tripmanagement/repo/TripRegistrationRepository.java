package com.chainsys.tripmanagement.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.tripmanagement.model.TripRegistration;

public interface TripRegistrationRepository extends  CrudRepository<TripRegistration, Integer> {
	TripRegistration findById(int id);
	TripRegistration save(TripRegistration tripRegistration);
	void deleteById(int id);
	List <TripRegistration> findAll();
	TripRegistration findByEmailAndPassword(String email,String password);
	TripRegistration findByEmail(String email);
	TripRegistration findByPhoneNumber(String phone);


}
