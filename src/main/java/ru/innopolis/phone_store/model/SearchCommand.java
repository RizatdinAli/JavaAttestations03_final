package ru.innopolis.phone_store.model;

import org.springframework.stereotype.Component;

@Component
public class SearchCommand {
	String text;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

}