<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkE3IajMIIn-BK9q-wwcZhp7Cr_NdjanUNRVZ3v8buPdlSDDWb">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<style media="screen">
    :root {
      --input-padding-x: 1.5rem;
      --input-padding-y: 0.75rem;
    }

    .login,
    .image {
      min-height: 100vh;
    }

    .bg-image {
      background-image: url('https://cdn.suwalls.com/wallpapers/abstract/connected-dots-23452-2880x1800.jpg');
      background-size: cover;
      background-position: center;
    }

    .login-heading {
      font-weight: 300;
    }

    .btn-login {
      font-size: 0.9rem;
      letter-spacing: 0.05rem;
      padding: 0.75rem 1rem;
      border-radius: 2rem;
    }

    .form-label-group {
      position: relative;
      margin-bottom: 1rem;
    }

    .form-label-group>input,
    .form-label-group>label {
      padding: var(--input-padding-y) var(--input-padding-x);
      height: auto;
      border-radius: 2rem;
    }

    .form-label-group>label {
      position: absolute;
      top: 0;
      left: 0;
      display: block;
      width: 100%;
      margin-bottom: 0;
      /* Override default `<label>` margin */
      line-height: 1.5;
      color: #495057;
      cursor: text;
      /* Match the input under the label */
      border: 1px solid transparent;
      border-radius: .25rem;
      transition: all .1s ease-in-out;
    }

    .form-label-group input::-webkit-input-placeholder {
      color: transparent;
    }

    .form-label-group input:-ms-input-placeholder {
      color: transparent;
    }

    .form-label-group input::-ms-input-placeholder {
      color: transparent;
    }

    .form-label-group input::-moz-placeholder {
      color: transparent;
    }

    .form-label-group input::placeholder {
      color: transparent;
    }

    .form-label-group input:not(:placeholder-shown) {
      padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
      padding-bottom: calc(var(--input-padding-y) / 3);
    }

    .form-label-group input:not(:placeholder-shown)~label {
      padding-top: calc(var(--input-padding-y) / 3);
      padding-bottom: calc(var(--input-padding-y) / 3);
      font-size: 12px;
      color: #777;
    }


    @supports (-ms-ime-align: auto) {
      .form-label-group>label {
        display: none;
      }
      .form-label-group input::-ms-input-placeholder {
        color: #777;
      }
    }

    @media all and (-ms-high-contrast: none),
    (-ms-high-contrast: active) {
      .form-label-group>label {
        display: none;
      }
      .form-label-group input:-ms-input-placeholder {
        color: #777;
      }
    }
  </style>
  <script type="text/javascript" >
   	function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
</head>
<body>
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.html">IRIS Software</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="Home">Home</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact">Contact</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="login">Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<div class="container-fluid">
  <div class="row no-gutter">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image">
    </div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">	
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">Welcome back!</h3>
              <core:if test="${msg ne null}">
              	<div class="alert alert-danger alert-dismissible fade show">
              		<!-- <strong>Invalid!</strong> Wrong Credentials.
              		<button type="button" class="close" data-dismiss="alert">&times;</button> -->
              		${msg}
              	</div>
              </core:if>
              <form action="validateRole" method="POST">
                <div class="form-label-group">
                  <input type="number" id="inputEmail" class="form-control" placeholder="Enter User ID" name="id" required autofocus>
                  <label for="inputEmail">UserId</label>
                </div>

                <div class="form-label-group">
                  <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pwd" required>
                  <label for="inputPassword">Password</label>
                </div>

                <button class="btn btn-lg btn-dark btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Sign in</button>
               
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>