package com.kgrodzicki.flashcards.grails

class IndexViewDispatcherController {

	def index = {
		def isMobile

		withMobileDevice {  isMobile = true }

		if (isMobile){
			render(view: "/indexMobile")
		} else {
			render(view:"/index")
		}
	}
}
