package loginportal

class AdminController {

    def index() {
    	if(params.name==null){
    		def persons=User.list()
    		[persons:persons]
    	}
    	else{
    		def persons=User.findByFirstNameLike("%${params.name}%")
    		[persons:persons]
    	}
    	
    }
}
