<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>EPark</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="aboutResource/css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="aboutResource/css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="aboutResource/css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="aboutResource/images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="aboutResource/css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  <style>
  table.center {
    margin-left:auto; 
    margin-right:auto;
  }
th, td {
  padding: 15px;
}
  </style>
   </head>
   <!-- body -->
   <body class="main-layout2">

      <header>
         <!-- header inner -->
         <div class="header">
            <div class="container">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                        <div class="center-desk">
                          </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item">
                                 <a class="nav-link" href="/"> Home  </a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="/view">Rent Parking</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="/register">Register</a>
                              </li>
                           </ul>
                           <div class="sign_btn"><a href="/login">Log in</a></div>
                        </div>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <!-- end header inner -->
      <!-- end header -->
      <!-- banner -->
<div style="text-align: center;">
${status}
</div>
<div style="text-align:center">
<h1>Fill in the below details to post an AD</h1>
</div>
<table class="center">
<form action="/addDetails" method="post" enctype="multipart/form-data">
<tr>
<td><label>Enter Plot number: </label></td>
<td><input type="text" name="plotNumber" size="28" required/></td>
</tr>
<tr>
<td><label>Enter Plot Address: </label></td>
<td><input type="text" name="address" size="28" required/></td>
</tr>
<tr>
<td><label>Enter Plot Description: </label></td>
<td><input type="text" name="description" size="28" required/></td>
</tr>
<tr>
<td><label>Enter contact email address: </label></td>
<td><input type="text" name="email" size="28" required/></td>
</tr>
<tr>
<td><label>Quote Rent amount in INR : </label></td>
<td><input type="text" name="amount" size="28" required/></td>
</tr>
<tr>
<td><label>Enter Plot Image: </label></td>
<td><input type="file" name="image" size="28" accept="image/*" required/></td>
</tr>
<tr>
<td><label>Submit: </label></td>
<td><input type="Submit" value="Submit"/></td>
</tr>
</form>
</table>
<div style="text-align: center;">
<a href="/view">Rent Park</a>
</div>
</body>
</html>