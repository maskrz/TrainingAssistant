package com.trainingassistant.service.configuration;

import java.util.List;

import com.trainingassistant.database.entity.Property;

public interface ConfigurationService {

	public String getProperty(PropertyName propertyName);
	
	public String getProperty(PropertyName propertyName, String... bundles);
	
	public boolean getBooleanProperty(PropertyName propertyName);
	
	public List<Property> getAllProperties();
}
