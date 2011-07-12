import edu.umn.ncs.signup.StudyInterestContactMethod

class BootStrap {

    def init = { servletContext ->
		
		// create the contact methods if they are not there
		def methods = ['Call me', 'Mail me a brochure', 'Send me an e-mail']
		methods.each{ method ->
			def cm = StudyInterestContactMethod.findByName(method)
			if ( ! cm ) cm = new StudyInterestContactMethod(name: method).save()
		}
		
    }
    def destroy = {
    }
}
