package com.kgrodzicki.flashcards.grails

import com.kgrodzicki.flashcards.grails.Lesson;
import grails.converters.JSON

class LessonController {
	static scaffold = Lesson

	def lessons = {
		[ lessons : Lesson.list() ]
	}

	def start = {
	}

	def showJson = {
		def results = Lesson.get( params.id )
		
		render(contentType:"text/json") {
			cards = array {
				for(c in results.cards) {
					card (question:c.question, answer:c.answer)
				}
			}
		}
	}
}
