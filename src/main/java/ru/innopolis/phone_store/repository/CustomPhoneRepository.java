package ru.innopolis.phone_store.repository;

import java.util.List;

import ru.innopolis.phone_store.model.Phone;

public interface CustomPhoneRepository {
	
	List<Phone> getNamesLikeOrBrandLike(String name);
	
}
