package com.kgrodzicki.flashcards.grails

class LessonService {

    static transactional = true

    def save = { lesson, cards ->
        lesson.addToCards(cards).save(flush:true)
    }
}
