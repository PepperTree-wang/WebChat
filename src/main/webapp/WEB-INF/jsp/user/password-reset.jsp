<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); pageContext.setAttribute("path",path);%>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>:: PostMan :: Chat Application</title>
<link rel="icon" href="favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="${pageScope.path}/static/fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="${pageScope.path}/static/dist/assets/css/style.min.css">
<body>
<div id="layout" class="theme-cyan">
<div class="authentication">
<div class="container d-flex flex-column">
<div class="row align-items-center justify-content-center no-gutters min-vh-100">
<div class="col-12 col-md-7 col-lg-5 col-xl-4 py-md-11">
<div class="card border-0 shadow-sm">
<div class="card-body">

<h3 class="text-center">Password Reset</h3>

<p class="text-center mb-6">Please enter your email address below to receive instructions for resetting password.</p>

<form class="mb-4 mt-5">

<div class="input-group mb-2">
<input type="email" class="form-control form-control-lg" placeholder="Enter your email">
</div>

<div class="text-center mt-5">
<a href="../signin.jsp" class="btn btn-lg btn-primary" title="">Send Reset link</a>
</div>
</form>

<p class="text-center mb-0">Already have an account? <a class="link" href="../signin.jsp">Sign in</a>.</p>
</div>
</div>
</div>
<div class="signin-img d-none d-lg-block text-center">
<img src="${pageScope.path}/static/dist/assets/images/signin-img-cyan.svg" alt="Sign In Image" />
</div>
</div> 
</div>
</div>
</div>

<script type="text/javascript" src="${pageScope.path}/static/dist/assets/vendor/jquery/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="${pageScope.path}/static/dist/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
