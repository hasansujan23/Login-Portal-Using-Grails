package loginportal

class UserController {

    def index() {
    	if(session.email==null){
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
    	if(session.email==null){
    		redirect(action:"login")
    	}
    	else{
    		//def person=chainModel['persons']
    		//[person:person]
    		def query=User.where {
    			email==session.email
    		}
    		def person=query.list()
    		[person:person]
    	}
    	
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

    def check(){
    	def cnt=User.findByEmailAndPassword(params.email,params.password.encodeAsMD5())
    	if(cnt){
    		session.email=params.email
    		session.password=params.password
    		redirect(action:"profile")
    		//def query=User.where {
    			//email==params.email
    		//}
    		//def person=query.list()
    		//render(view:"profile",model:[person:person])
    		//redirect(action:"profile",params:[person:person])
    		//chain(action: "profile", model: [persons:person])
    	}
    	else{
    		flash.error="Wrong email or password."
    		redirect(action:"login")
    	}
    }
}
