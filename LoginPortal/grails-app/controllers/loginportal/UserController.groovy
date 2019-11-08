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

    def changepassword(){
        render(view:"change-password")
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

    def ajaxCall(){
        def ck=User.countByEmail(params.email)
        render ck
    }

    def logout(){
        session.invalidate()
        redirect(action:"login")
    }

    def update(){
        if(params.pPassword=="" || params.nPassword=="" || params.cPassword==""){
            flash.error="You should complete all the field"
            redirect(action:"changepassword")
        }
        else if(params.nPassword!=params.cPassword){
            flash.error="New password and confirm password doesn't match"
            redirect(action:"changepassword")
        }
        else if(User.executeUpdate("update User set password=:newPassword where email=:userEmail and password=:oldPassword",[newPassword:params.nPassword.encodeAsMD5(),userEmail:session.email,oldPassword:params.pPassword.encodeAsMD5()])){
            session.password=params.nPassword
            flash.message="Password change successfully :)"
            redirect(action:"changepassword") 
        }
        else{
            flash.error="Previous password is wrong"
            redirect(action:"changepassword")
        }
        
    }
}
