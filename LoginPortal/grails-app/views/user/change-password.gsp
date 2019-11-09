<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <title>Change Password</title>
  </head>

  <body>

    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center mt-2">
          <g:if test="${flash.message}">
            <p class="alert alert-success" role="status">${flash.message}</p>
          </g:if>
        </div>
        <div class="col-md-12 text-center mt-2">
          <g:if test="${flash.error}">
            <p class="alert alert-danger" role="status">${flash.error}</p>
          </g:if>
        </div>
      </div>
    </div>

    <div class="container mt-5">
      <div class="row">
        <div class="col-md-8 mx-auto">
          <div class="text-center">
            <i class="fa fa-key" style="font-size: 50px;" aria-hidden="true"></i>
            <h5 class="text-secondary">Change Password</h5>
          </div>
          <div class="card">
            <div class="card-body">
              <g:form id="MyForm" controller="User" action="update">
                <div class="form-group">
                  <label for="">Previous Password</label>
                  <g:passwordField type="password" class="form-control" id="pPwd" name="pPassword"/>
                </div>
                <div class="form-group">
                  <label for="">New Password</label>
                  <g:passwordField class="form-control" id="nPwd" name="nPassword"/>
                </div>
                <div class="form-group">
                  <label for="">Confirm Password</label>
                  <g:passwordField class="form-control" id="cPwd" name="cPassword"/>
                </div>
                <input type="submit" id="submiteButtonID" class="btn btn-outline-success" name="submit" value="Submit">
                <button class="btn btn-outline-secondary" id="clrBtn" style="margin-left: 10px;">Clear</button>
              </g:form>
            </div>
          </div>
        </div>
      </div>
    </div>


    <script>
      $(document).ready(function(){
        $('#clrBtn').click(function(e){
          e.preventDefault();
          $('#pPwd').val("");
          $('#nPwd').val("");
          $('#cPwd').val("");
        });
      });
    </script>






    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>