<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
    <title>Registration</title>
  </head>
  <body>
    <g:if test="${flash.message}">
      <div class="alert alert-danger mt-2" role="status">${flash.message}</div>
    </g:if>

    <div class="container mt-5">
      <div class="row">
        <div class="col-md-8 mx-auto">
          <div class="text-center">
            <i class="fa fa-address-book" style="font-size: 50px;" aria-hidden="true"></i>
            <h5 class="text-secondary">Registration Panel</h5>
          </div>
          <g:form controller="User" action="save">
              <div class="form-group">
                <label>First Name: </label>
                <g:textField class="form-control" name="firstName"/>
              </div>
              <div class="form-group">
                <label>Last Name: </label>
                <g:textField class="form-control" name="lastName"/>
              </div>
              <div class="form-group">
                <label>Address: </label>
              <g:textField class="form-control" name="address"/>
              </div>
              <div class="form-group">
                <label>Phone: </label>
                <g:textField class="form-control" name="phone"/>
              </div>
              <div class="form-group">
                <label>Email: </label>
                <g:textField id="email" class="form-control" name="email"/>
                <span class="text-success" style="font-size:18px" id="sid"></span>
                <span class="text-danger" style="font-size:18px" id="did"></span>
              </div>
              <div class="form-group">
                <label>Birthdate: </label>
                <g:datePicker class="form-control" name="birthDate" precision="year" precision="month" precision="day"/>
              </div>  
              <div class="form-group">
                <label>Password: </label>
                <g:passwordField class="form-control" name="password"/>
              </div>
              <input type="submit" class="btn btn-success" value="Register">
              <g:link class="btn btn-warning" style="text-decoration:none;" controller="user" action="login" id="">Cancel</g:link>
          </g:form>
        </div>
      </div>
    </div>







  <script>
  $(document).ready(function(){
    $('#email').blur(function(){
      var mail=$('#email').val();
      $.ajax({
        url:"${g.createLink(controller:'User',action:'ajaxCall')}",
        data:{email:mail},
        success:function(data){
          if(data<=0){
            $('#did').html("");
            $('#sid').html("Valid Email");
          }
          else{
            $('#sid').html("");
            $('#did').html("Invalid Email");
          }
        }
      });
    });
  })
</script>

  </body>
</html>