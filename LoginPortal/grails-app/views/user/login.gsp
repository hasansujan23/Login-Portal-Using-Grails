<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Login</title>
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
            <i class="fa fa-user-circle-o" style="font-size: 50px;" aria-hidden="true"></i>
            <h5 class="text-secondary">Login Panel</h5>
          </div>
          <div class="card">
            <div class="card-body">
              <g:form controller="User" action="check">
                <div class="form-group">
                  <label for="">Email Address</label>
                  <g:textField class="form-control" name="email"/>
                </div>
                <div class="form-group">
                  <label for="">Password</label>
                  <g:passwordField class="form-control" name="password"/>
                </div>
                <input type="submit" class="btn btn-outline-success" name="submit" value="Submit">
                <button class="btn btn-outline-secondary" style="margin-left: 10px;">Clear</button>
              </g:form>
            </div>
          </div>
        </div>
      </div>
    </div>









    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>