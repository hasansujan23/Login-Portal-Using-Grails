<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Profile</title>
    <style>
      .bgcolor{
        background-color: #7c0a02;
      }
    </style>
  </head>

  <body>

    <nav class="navbar navbar-expand-lg navbar-dark bgcolor">
      <div class="container">
        
      
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="#">Navigation</a>
    <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown my-2 my-lg-0">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <g:each in="${person}" var="p" status="i">
            ${p.firstName} ${p.lastName}
          </g:each>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <g:link class="dropdown-item" action="" id="">Change Password</g:link>
          <g:link class="dropdown-item" action="logout" id="">Logout</g:link>
        </div>
      </li>
    </ul>
  </div>
</div>
</nav>

<div class="container mt-5">
      <div class="row">
        <div class="col-md-8 mx-auto">
          <div class="text-center">
            <i class="fa fa-user-circle-o" style="font-size: 50px;" aria-hidden="true"></i>
            <h5 class="text-secondary">User Profile</h5>
          </div>
          <div class="card">
            <div class="card-body">
              <table class="table">
                <g:each in="${person}" var="p" status="i">
                <tr>
                  <th>First Name</th>
                  <td>${p.firstName}</td>
                </tr>
                <tr>
                  <th>Last Name</th>
                  <td>${p.lastName}</td>
                </tr>
                <tr>
                  <th>Address</th>
                  <td>${p.address}</td>
                </tr>
                <tr>
                  <th>Phone</th>
                  <td>${p.phone}</td>
                </tr>
                <tr>
                  <th>Email</th>
                  <td>${p.email}</td>
                </tr>
                <tr>
                  <th>Birthdate</th>
                  <td>${p.birthDate}</td>
                </tr>
                </g:each>
              </table>
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