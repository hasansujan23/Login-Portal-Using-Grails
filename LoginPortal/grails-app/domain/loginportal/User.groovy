package loginportal

class User {
	String firstName
	String lastName
	String address
	String phone
	String email
	Date birthDate
	String password

    static constraints = {
    	firstName blank:false,nullable:false
    	lastName blank:false,nullable:false
    	address blank:false,nullable:false
    	phone blank:false,nullable:false
    	email blank:false,nullable:false,unique:true
    	birthDate blank:false,nullable:false
    	password blank:false,nullable:false
    }
}
