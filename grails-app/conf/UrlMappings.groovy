class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
		
		name lesson: "/lesson/rest/$id?"(controller:"lesson", action:"showJson", parseRequest:false){
			action = [GET:"showJson"]
		}
	}
}
