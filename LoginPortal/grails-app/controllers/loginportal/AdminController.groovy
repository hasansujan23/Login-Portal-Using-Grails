package loginportal

class AdminController {

    def index() {
    	if(session.email==null){
    		redirect(controller:"user",action:"login")
    	}
    	else if(params.name==null){
    		def persons=User.list()
    		[persons:persons]
    	}
    	else{
    		def persons=User.findAllByLastNameLike("%${params.name}%")
    		[persons:persons]
    	}
    	
    }
}
