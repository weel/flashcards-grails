package com.kgrodzicki.flashcards.grails

import com.kgrodzicki.flashcards.grails.Card
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class CardController {
	static scaffold = Card	
}
