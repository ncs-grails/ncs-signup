package edu.umn.ncs.signup

import grails.plugins.springsecurity.Secured

class StudyInterestController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def index = {
        redirect(action: "create", params: params)
    }

	@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def create = {
        def studyInterestInstance = new StudyInterest()
        studyInterestInstance.properties = params
        return [studyInterestInstance: studyInterestInstance]
    }

	@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def save = {
        def studyInterestInstance = new StudyInterest(params)
		studyInterestInstance.clientIpAddress = request.getRemoteAddr()
		
        if (studyInterestInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'studyInterest.label', default: 'StudyInterest'), studyInterestInstance.id])}"
			render(view:"success")
        }
        else {
            render(view: "create", model: [studyInterestInstance: studyInterestInstance])
        }
    }

	@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
	def success = { }
	
	@Secured(['ROLE_NCS_IT'])
    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [studyInterestInstanceList: StudyInterest.list(params), studyInterestInstanceTotal: StudyInterest.count()]
    }
	
	@Secured(['ROLE_NCS'])
    def show = {
        def studyInterestInstance = StudyInterest.get(params.id)
        if (!studyInterestInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'studyInterest.label', default: 'StudyInterest'), params.id])}"
            redirect(action: "list")
        }
        else {
            [studyInterestInstance: studyInterestInstance]
        }
    }

	@Secured(['ROLE_NCS'])
    def delete = {
        def studyInterestInstance = StudyInterest.get(params.id)
        if (studyInterestInstance) {
            try {
                studyInterestInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'studyInterest.label', default: 'StudyInterest'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'studyInterest.label', default: 'StudyInterest'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'studyInterest.label', default: 'StudyInterest'), params.id])}"
            redirect(action: "list")
        }
    }
}
