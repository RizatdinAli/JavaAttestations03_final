package ru.innopolis.phone_store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ru.innopolis.phone_store.model.Phone;
import ru.innopolis.phone_store.repository.CustomPhoneRepository;
import ru.innopolis.phone_store.repository.PhoneRepository;

@Service
public class PhoneServiceImpl implements PhoneService {

	@Autowired
    private PhoneRepository phoneRepository;
	
	@Autowired
	private CustomPhoneRepository customPhoneRpository;
	
	@Override
	public List<Phone> getAllPhones() {
		return (List<Phone>) phoneRepository.findAll();
	}
	
	@Override
	public List<Phone> getPhones(String text) {
		
		List<Phone> allPhones = customPhoneRpository.getNamesLikeOrBrandLike(text);
		return allPhones;
	}

}
