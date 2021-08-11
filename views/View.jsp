<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
   </head>
   <!-- body -->
   <body class="main-layout">

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
      <div><h1>Available plots for Rent</h1></div>
      <section class="banner_main2">
		
<table border="1" width="80%">
<th>Plot Image</th>
<th>Unique Id</th>
<th>Plot Number</th>
<th>Address</th>
<th>Description</th>
<th>Contact email</th>
<th>Rent per month</th>


<c:forEach var="details" items="${list}" varStatus="status">
			<tr>
				<td><img alt="img" src="data:image/jpeg;base64,${details.image}" style="width:450;height: 300px;"/>
				</td>
				<td>${details.id}</td>
				<td>${details.plotNumber}</td>
				<td>${details.address}</td>
				<td>${details.description}</td>
				<td>${details.email}</td>
				<td>${details.amount}</td>
				</tr>
		</c:forEach>
</table>
      </section>
      <div style="text-align: center;"><a href="/">Home</a></div></center>

      <!-- Javascript files-->
      <script src="aboutResource/js/jquery.min.js"></script>
      <script src="aboutResource/js/popper.min.js"></script>
      <script src="aboutResource/js/bootstrap.bundle.min.js"></script>
      <script src="aboutResource/js/jquery-3.0.0.min.js"></script>
      <script src="aboutResource/js/plugin.js"></script>
      <!-- sidebar -->
      <script src="aboutResource/js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="aboutResource/js/custom.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
   </body>
</html>

