<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <title>Admin</title>
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
              Admin
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <g:link class="dropdown-item" controller="user" action="logout" id="">Logout</g:link>
            </div>
          </li>
        </ul>
      </div>
    </div>
    </nav>

    <div class="container">
      <div class="row">
        <div class="col-md-3 mt-5">
          <h4>User List</h4>
        </div>
        <div class="col-md-9 mt-5">
          <g:form controller="admin" action="index">
            <div class="input-group mb-2">
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-search" aria-hidden="true"></i></div>
        </div>
        <g:textField class="form-control" name="name" value="${userName}" placeholder="Search by user last name"/>
      </div>
          </g:form>
        </div>
        
        <div class="col-md-12 mt-5">
          <table class="table">
            <thead>
              <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
              </tr>
            </thead>
            <tbody>
              <g:each in="${persons}" var="person" status="i">
              <tr>
                <td>${person.firstName} ${person.lastName}</td>
                <td>
                  <% now = new Date() %>
                  <%age=Math.floor((now-person.birthDate)/365)%>
                  <%=age%>
                </td>
                <td>${person.email}</td>
                <td>${person.phone}</td>
                <td>${person.address}</td>
              </tr>
              </g:each>
            </tbody>
          </table>
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