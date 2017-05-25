package com.trainingassistant.util.calendar;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter
public class LocalDateTimeConverter implements AttributeConverter<LocalDateTime, Timestamp> {

	@Override
	public Timestamp convertToDatabaseColumn(LocalDateTime dateTime) {
		if (dateTime != null) {
			return Timestamp.valueOf(dateTime);
		}
		return null;
	}

	@Override
	public LocalDateTime convertToEntityAttribute(Timestamp timestamp) {
		if (timestamp != null) {
			return timestamp.toLocalDateTime();
		}
		return null;
	}

}
