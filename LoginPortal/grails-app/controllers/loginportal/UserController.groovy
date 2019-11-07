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
}
