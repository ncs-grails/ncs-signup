class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"studyInterest", action:"create")
		"500"(view:'/error')
	}
}
