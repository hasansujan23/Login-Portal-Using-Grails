<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Form</title>
  </head>
  <body>
    <g:if test="${flash.message}">
      <div class="alert alert-danger" role="status">${flash.message}</div>
    </g:if>
    <div class="container mt-5">
      <div class="row">
        <div class="col-md-8 mx-auto">
          <div class="text-center">
            <i class="fa fa-user-circle-o" style="font-size: 50px;" aria-hidden="true"></i>
            <h5 class="text-secondary">Login Panel</h5>
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
                <g:textField class="form-control" name="email"/>
              </div>
              <div class="form-group">
                <label>Birthdate: </label>
                <g:datePicker class="form-control" name="birthDate" precision="year"/>
              </div>  
              <div class="form-group">
                <label>Password: </label>
                <g:textField class="form-control" name="password"/>
              </div>
              <input type="submit" class="btn btn-success" value="Register">
          </g:form>
        </div>
      </div>
    </div>
  </body>
</html>