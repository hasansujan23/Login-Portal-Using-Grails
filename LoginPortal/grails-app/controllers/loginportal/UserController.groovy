package loginportal

class UserController {

    def index() {
    	if(session.user==null){
    		redirect(action:"login")
    	}
    	else{
    		redirect(action:"profile")
    	}
    }

    def login(){

    }

    def registration(){

    }

    def profile(){

    }

    def save(){
    	//println params.email
    	//render params.birthDate
    	def creatUser=new User(params)
    	if(creatUser.save()){
    		flash.message="Registration Successful"
    		redirect(action:"login")
    	}
    	else{
    		flash.message="Registration Failed"
    		redirect(action:"registration")
    	}
    }
}
