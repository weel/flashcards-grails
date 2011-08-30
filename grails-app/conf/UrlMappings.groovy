class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
		
		"/lesson/rest/$id?"(controller:"lesson", parseRequest:false){
			action = [GET:"showJson"]
		}
	}
}
