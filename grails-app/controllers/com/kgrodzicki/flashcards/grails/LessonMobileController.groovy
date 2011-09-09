package com.kgrodzicki.flashcards.grails

import com.kgrodzicki.flashcards.grails.Lesson;

class LessonMobileController {

	def lessons = {
		[ lessons : Lesson.list() ]
	}

	def start = {
		
	}
}
