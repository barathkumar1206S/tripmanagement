package com.chainsys.tripmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.tripmanagement.pojo.TripPackage;
import com.chainsys.tripmanagement.repo.TripPackagesRepository;

@Service
public class PackageService {
	@Autowired
	private TripPackagesRepository trprepo;
	
	public List<TripPackage> getallpackages(){
		List<TripPackage> packlist=trprepo.findAll();
		return packlist;
	}
	public TripPackage save(TripPackage trpack) {
		return trprepo.save(trpack);
	}
	public TripPackage findByid(int id) {
		return trprepo.findById(id);
	}
public void deleteByid(int id) {
	trprepo.deleteById(id);
}
}
