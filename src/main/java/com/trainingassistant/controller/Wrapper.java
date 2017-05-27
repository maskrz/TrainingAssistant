package com.trainingassistant.controller;

public class Wrapper {
	
	public Wrapper(){};

	public Wrapper(String text) {
		super();
		this.text = text;
	}

	private String text;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
}
