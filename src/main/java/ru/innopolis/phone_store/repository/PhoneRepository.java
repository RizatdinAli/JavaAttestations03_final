package ru.innopolis.phone_store.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import ru.innopolis.phone_store.model.Phone;

@Repository
public interface PhoneRepository extends CrudRepository<Phone, Integer> {
	
}
