<?php
// Start the session
session_start();

// Check if the user is logged in
if (!isset($_SESSION['username'])) {
    header("Location: login.html");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Roll Call management system</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: white;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
    /*@media screen and (min-width: 912px) {
       .content {margin-left: 200px} */
     /* Make the sidebar fixed */
    .fixed-sidebar {
      position: fixed;
      top: 0;
      left: 0;
      width: 390px;
      height: 100%; /* Full height */
      background-color: #f8f8f8;
      border-right: 12px solid #ddd;
      padding: 20px;

    /* Add some padding to the content area to prevent overlap */
    .content-area {
      margin-left: 220px; /* Adjust margin to account for sidebar width */
      padding: 20px;
    }
    
  </style>
</head>
<body>

<nav class="navbar navbar-inverse visible-xs">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><img src="lanps_logo.png" height="50%" width="30%"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">RCM System</a></li>
        <li class="active"><a href="primaryone.php">Primary One</a></li>
        <li ><a href="primarytwo.php">Primary Two</a></li>
        <li ><a href="primarythree.php">Primary Three</a></li>
        <li><a href="primaryfour.php">Primary Four</a></li>
        <li><a href="primaryfive.php">Primary Five</a></li>
        <li><a href="primarysix.php">Primary Six</a></li>
        <li><a href="primaryseven.php">Primary Seven</a></li>
        <li><a href="logout.php">Logout</a></li>

      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <div class="fixed-sidebar">
      <!-- <h4 class="text-primary">ROLLCALL MANAGEMENT SYSTEM</h4> -->
      <img src="lanps_logo.png">
      <style >
        img{
      height: 80px;
  width: 80%;
  
    }
      </style>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">RCM System</a></li>
        <li><a href="primaryone.php">Primary One</a></li>
        <li><a href="primarytwo.php">Primary Two</a></li>
        <li><a href="primarythree.php">Primary Three</a></li>
        <li><a href="primaryfour.php">Primary Four</a></li>
        <li><a href="primaryfive.php">Primary Five</a></li>
        <li><a href="primarysix.php">Primary Six</a></li>
        <li><a href="primaryseven.php">Primary Seven</a></li>
          <li><a href="logout.php">Logout</a></li>
      </ul><br>
    </div>
  </div>
    <br>
   <div class="content">
    <div class="col-sm-9">
      <div class="well">
        <h4 class="text-primary">Roll Call Management System</h4>
         <p>Welcome, <?php echo htmlspecialchars($_SESSION['username']); ?>!</p>
      </div>
    </div>
      <div class="container-fluid">
        <div class="col-sm-3" >
          <div class="well bg-info text-white">
            <h4 class="text-primary">Students Present</h4>
            <p>500 students</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            <h4 class="text-danger">Students absent</h4>
            <p>40 students</p> 
          </div>
        </div>
        <div class="col-sm-3" >
          <div class="well bg-info text-white">
            <h4 class="text-success">All studets</h4>
            <p>540 students</p> 
          </div>
        </div>
      </div>
    </div>
</body>
</html>
