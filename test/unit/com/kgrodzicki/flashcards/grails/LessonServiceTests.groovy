package com.kgrodzicki.flashcards.grails

import grails.test.*

class LessonServiceTests extends GrailsUnitTestCase {
    def service
    
    protected void setUp() {
        super.setUp()
        
        mockDomain(Lesson)
        mockDomain(Card)
        
        service = new LessonService()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testSaveMethod() {
        // given
        def lesson = new Lesson(name: "Test lesson")
        def card = new Card(question: "q1", answer: "a1")
        def card2 = new Card(question: "q2", answer: "a2")
        def cards = [card, card2] 
        
        // when
        service.save(lesson, cards)

        // then
        assertEquals(1, Lesson.list().size())
        // FIXME [kgrodzicki] 
        // assertEquals(2, Card.list().size())
    }
}
