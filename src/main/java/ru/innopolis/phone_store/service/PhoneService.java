package ru.innopolis.phone_store.service;

import java.util.List;

import ru.innopolis.phone_store.model.Phone;

public interface PhoneService {
	public List<Phone> getAllPhones();
	public List<Phone> getPhones(String brand);
}
