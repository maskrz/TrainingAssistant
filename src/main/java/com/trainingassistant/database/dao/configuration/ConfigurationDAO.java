package com.trainingassistant.database.dao.configuration;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.trainingassistant.database.entity.Property;


public interface ConfigurationDAO {

	/**
	 * Get all properties
	 * @return all properties
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Exception.class)
	public List<Property> getPropertyList();
}
