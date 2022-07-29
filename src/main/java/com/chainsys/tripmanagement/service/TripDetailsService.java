package com.chainsys.tripmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.controller.TripDetailsController;
import com.chainsys.tripmanagement.pojo.TripDetails;
import com.chainsys.tripmanagement.repo.TripDetailsRepository;

@Service
public class TripDetailsService {
@Autowired
private TripDetailsRepository triprepo;

public List<TripDetails> getalltripdetails()
{ 
	List<TripDetails>triplist = triprepo.findAll();
	return triplist;
}
public TripDetails save(TripDetails tpd) {
	return triprepo.save(tpd);
	
}
public TripDetails findById(int id) {
	return triprepo.findById(id);
	
}
public void deleteByid(int id) {
	triprepo.deleteById(id);
}

}
