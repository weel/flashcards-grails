class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{ 
			constraints { 
				// apply constraints here
			} 
		}

		"/"(controller:"indexViewDispatcher")

		"500"(view:'/error')

		name lesson: "/lesson-cards/$id"(controller:"lesson", action:"showJson", parseRequest:false){
			action = [GET:"showJson"]
		}

		name exportlessons: "/lesson/export/"(controller:"lesson", action:"allJson", parseRequest:false){
			action = [GET:"allJson"]
		}
	}
}
