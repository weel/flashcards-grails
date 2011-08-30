package com.kgrodzicki.flashcards.grails

class Card {
	String question
	String answer

	def static hasMany = [lessons:Lesson]
	
	static belongsTo = Lesson
	
    static constraints = {
		question blank: false
		answer blank: false
    }
	
	String toString() {
		question
	}
	
}
