import com.kgrodzicki.flashcards.grails.Card
import com.kgrodzicki.flashcards.grails.Lesson

class BootStrap {

    def init = { servletContext ->
		
		def card = new Card(question: "front 1", answer: "back 1").save(failOnError: true)
		def card2 = new Card(question: "front 2", answer: "back 2").save(failOnError: true)
		
		def lesson = new Lesson(name: "Test lesson")
		
		lesson.addToCards(card)
		lesson.addToCards(card2)
		
		lesson.save(failOnError: true)
    }
    def destroy = {
    }
}
