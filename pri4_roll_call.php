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
    /* Make the sidebar fixed */
    .fixed-sidebar {
      position: fixed;
      top: 0;
      left: 0;
      width: 390px;
      height: 100%; /* Full height */
      background-color: #f8f8f8;
      border-right: 1px solid #ddd;
      padding: 20px;
    }

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
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">RCM System</a></li>
         <li ><a href="primaryone.php">Primary One</a></li>
        <li ><a href="primarytwo.php">Primary Two</a></li>
        <li ><a href="primarythree.php">Primary Three</a></li>
        <li class="active"><a href="primaryfour.php">Primary Four</a></li>
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
      <img src="lanps_logo.png">
      <style >
        img{
      height: 80px;
  width: 80%;
  
    }
      </style>
      <ul class="nav nav-pills nav-stacked">
        <li ><a href="homepage.php">RCM System</a></li>
         <li ><a href="primaryone.php">Primary One</a></li>
        <li ><a href="primarytwo.php">Primary Two</a></li>
        <li ><a href="primarythree.php">Primary Three</a></li>
        <li class="active"><a href="primaryfour.php">Primary Four</a></li>
        <li><a href="primaryfive.php">Primary Five</a></li>
        <li><a href="primarysix.php">Primary Six</a></li>
        <li><a href="primaryseven.php">Primary Seven</a></li>
          <li><a href="logout.php">Logout</a></li>
      </ul><br>
    </div>
  </div>
    <br>
   
    <div class="col-sm-9">
      <div class="well">
        <h4 class="text-primary">Roll Call Management System</h4>
         <p>Welcome, <?php echo htmlspecialchars($_SESSION['username']); ?>!</p>
      </div>
      <div class="row">
        <div class="col-sm-12" >
          <div class="well bg-info text-white">
            
 <?php
$host = "localhost";
$db_name = "roll_call_system";
$username = "root"; // Change this to your MySQL username
$password = ""; // Change this to your MySQL password

$conn = new mysqli($host, $username, $password, $db_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch students from the database
$primary4 = [];
$sql = "SELECT * FROM primary4";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $primary4[] = $row;
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $attendance_date = $_POST['date'] ?? date('Y-m-d');

    // Loop through the students and record attendance
    foreach ($primary4 as $student) {
        $student_id = $student['id'];
        $status = isset($_POST['student_'.$student_id]) ? 'present' : 'absent';

        // Check for duplicate entries (same student, same date)
        $check_sql = "SELECT * FROM attendance4 WHERE student_id = $student_id AND date = '$attendance_date'";
        $check_result = $conn->query($check_sql);

        if ($check_result->num_rows === 0) {
            // If no duplicate, insert the attendance record
            $sql = "INSERT INTO attendance4 (student_id, date, status) VALUES ($student_id, '$attendance_date', '$status')";
            if (!$conn->query($sql)) {
                echo "Error: " . $conn->error;
            }
        } else {
            echo "Attendance for " . $student['first_name'] . " " . $student['last_name'] . " on $attendance_date has already been recorded.<br>";
        }
    }

    echo "Attendance recorded successfully!";
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Roll Call</title>
</head>
<body>

<h2>Roll Call</h2>
<form action="" method="POST">
    <!-- Date Picker -->
    <label for="date">Select Date:</label>
    <input type="date" name="date" id="date" required><br><br>
<div class="container">
    <table class="table table-bordered">
        <thead>
            <tr><th> ID </th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>Present</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($primary4 as $student): ?>
                <tr>
                  <td><?php echo $student['id']  ?></td>
                    <td><?php echo $student['first_name']; ?> </td>  
                    <td> <?php echo $student['last_name']; ?></td>
                    <td>
                        <input type="checkbox" name="student_<?php echo $student['id']; ?>" checked>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <input type="submit" value="Submit Attendance">
</form>
        </div>
        </div>
</body>
</html>