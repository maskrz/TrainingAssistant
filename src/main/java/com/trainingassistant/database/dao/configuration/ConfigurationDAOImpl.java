package com.trainingassistant.database.dao.configuration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.trainingassistant.database.dao.GeneralRepository;
import com.trainingassistant.database.entity.Property;

@Component("configurationDAO")
public class ConfigurationDAOImpl implements ConfigurationDAO{

	@Autowired
	private GeneralRepository repository;
	
	@Override
	public List<Property> getPropertyList() {
		return getRepository().createNativeQuery("SELECT * FROM PROPERTY",
				Property.class).getResultList();
	}

	public GeneralRepository getRepository() {
		return repository;
	}

	public void setRepository(GeneralRepository repository) {
		this.repository = repository;
	}
}
