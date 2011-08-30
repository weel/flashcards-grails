package com.kgrodzicki.flashcards.grails

class Lesson {
	String name

	static hasMany = [cards:Card]

	static constraints = {
		name blank: false, unique: true
	}
	
	String toString() {
		name
	}
}
