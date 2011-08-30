package com.kgrodzicki.flashcards.grails

import com.kgrodzicki.flashcards.grails.Lesson;

class LessonController {
	static scaffold = Lesson
	
	def lessons = {
		[ lessons : Lesson.list() ]
	}
	
	def start = {
		
	}
}
