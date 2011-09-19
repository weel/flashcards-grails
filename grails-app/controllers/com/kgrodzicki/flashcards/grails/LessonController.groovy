package com.kgrodzicki.flashcards.grails

import com.kgrodzicki.flashcards.grails.Lesson;
import grails.converters.JSON
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class LessonController {

    static scaffold = Lesson
    def lessonService

    @Secured(['permitAll'])
    def lessons = {
        [ lessons : Lesson.list() ]
    }

    @Secured(['permitAll'])
    def start = {
    }

    @Secured(['permitAll'])
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

    def allJson = {
        def results = Lesson.getAll()

        render(contentType:"text/json") {
            lessons = array {
                for(l in results) {
                    lesson (id:l.id, name:l.name, cards:array {
                        for(c in l.cards) {
                            card (id:c.id, question:c.question, answer:c.answer)
                        }
                    })
                }
            }
        }
    }

    def upload = {
    }

    def uploadFile = {
        def f = request.getFile('jsonData')

        if(!f.empty) {
            def lessons = JSON.parse(f.getInputStream(), "UTF-8")
            lessons.each{ lesson ->
                Lesson lessonEntity = new Lesson()

                lessonEntity.name = lesson.name;

                def cards = []
                lesson.cards.each { c ->
                    Card cardEntity = new Card(question:c.question,answer:c.answer)
                    cards.add(cardEntity)
                }

                lessonService.save(lessonEntity, cards)
            }

            flash.message = 'File imported.'
            render(view:'upload')
        } else {
            flash.message = 'File cannot be empty.'
            render(view:'upload')
        }
    }
}
