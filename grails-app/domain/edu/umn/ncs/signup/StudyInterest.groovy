package edu.umn.ncs.signup

class StudyInterest {

	String fullName
	String address
	String address2
	String city
	String state = 'MN'
	String zipCode
	
	String homePhone
	String mobilePhone
	String workPhone
	
	String emailAddress
	
	StudyInterestContactMethod contactMethod
	
	Date dateCreated
	String clientIpAddress
	
    static constraints = {
		fullName(blank:false)
		address(nullable:true)
		address2(nullable:true)
		city(nullable:true)
		state(nullable:true, size:2..2)
		zipCode(nullable:true)

		// require at least one phone number		
		homePhone(nullable:true, validator: { val, obj -> 
		return ( obj.properties['homePhone']
				|| obj.properties['mobilePhone']
				|| obj.properties['workPhone'] )
		})
		mobilePhone(nullable:true)
		workPhone(nullable:true)
		emailAddress(nullable:true, email:true)
		contactMethod()
		dateCreated()
		clientIpAddress()
    }
}
