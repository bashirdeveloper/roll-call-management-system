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
        <li ><a href="#">RCM System</a></li>
        <li><a href="primaryone.php">Primary One</a></li>
        <li><a href="primarytwo.php">Primary Two</a></li>
        <li><a href="primarythree.php">Primary Three</a></li>
        <li><a href="primaryfour.php">Primary Four</a></li>
        <li class="active"><a href="primaryfive.php">Primary Five</a></li>
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
        <li><a href="primarytwo.php">Primary Two</a></li>
        <li ><a href="primaythree.php">Primary Three</a></li>
        <li><a href="primaryfour.php">Primary Four</a></li>
        <li class="active"><a href="primaryfive.php">Primary Five</a></li>
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

// Fetch primary5
$primary5 = [];
$sql = "SELECT * FROM primary5";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $primary5[] = $row;
    }
}

// Handle filter by date or student
$attendance5_records = [];
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $selected_date = $_POST['date'] ?? null;
    $selected_student_id = $_POST['student_id'] ?? null;

    $query = "SELECT a.*, s.first_name, s.last_name FROM attendance5 a JOIN primary5 s ON a.student_id = s.id WHERE 1=1";

    if ($selected_date) {
        $query .= " AND a.date = '$selected_date'";
    }
    if ($selected_student_id) {
        $query .= " AND a.student_id = $selected_student_id";
    }

    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $attendance5_records[] = $row;
        }
    } else {
        echo "No attendance5 records found.";
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Attendance</title>
    <style>
        /* Styles for Present and Absent */
        .present {
            color: blue;
        }
        .absent {
            color: red;
        }

    </style>
</head>
<body>

<h2>View Attendance Records</h2>
<form action="" method="POST">
    <!-- Date Picker -->
    <label for="date">Select Date:</label>
    <input type="date" name="date" id="date"><br><br>

    <!-- Student Dropdown -->
    <label for="student">Select Student:</label>
    <select name="student_id" id="student">
        <option value="">-- All Students --</option>
        <?php foreach ($primary5 as $student): ?>
            <option value="<?php echo $student['id']; ?>">
                <?php echo $student['first_name'] . " " . $student['last_name']; ?>
            </option>
        <?php endforeach; ?>
    </select><br><br>

    <input type="submit" value="View Attendance">
</form>

<!-- Display attendance5 records -->
<?php if (!empty($attendance5_records)): ?>
    <h3>Attendance Records</h3>
    <div class="container">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Date</th>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($attendance5_records as $record): ?>
                <tr>
                    <td><?php echo $record['date']; ?></td>
                     <td><?php echo $record['student_id']; ?></td>
                    <td><?php echo $record['first_name']; ?> </td> 
                    <td><?php echo$record['last_name']; ?></td>
                    <td>
                        <?php if ($record['status'] == 'present'): ?>
                            <span class="present">Present</span>
                        <?php else: ?>
                            <span class="absent">Absent</span>
                        <?php endif; ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

<?php endif; ?>
<!-- //summary of primary5 present and absent -->
<?php
include('dbconnect.php');
$date_filter = isset($_POST['date']) ? $_POST['date'] : null;

// SQL query to count primary5 based on attendance5 status
if ($date_filter) {
    // For a specific date
    $sql_present = "SELECT COUNT(*) AS present_count FROM attendance5 WHERE status = 'present' AND date = '$date_filter'";
    $sql_absent = "SELECT COUNT(*) AS absent_count FROM attendance5 WHERE status = 'absent' AND date = '$date_filter'";
} else {
    // For all dates (overall summary)
    $sql_present = "SELECT COUNT(*) AS present_count FROM attendance5 WHERE status = 'present'";
    $sql_absent = "SELECT COUNT(*) AS absent_count FROM attendance5 WHERE status = 'absent'";
}

// Get the number of present primary5
$result_present = $conn->query($sql_present);
$row_present = $result_present->fetch_assoc();
$present_count = $row_present['present_count'];

// Get the number of absent primary5
$result_absent = $conn->query($sql_absent);
$row_absent = $result_absent->fetch_assoc();
$absent_count = $row_absent['absent_count'];

// Display the summary
echo "<h3>Attendance Summary</h3>";
if ($date_filter) {
    echo "<p>Date: $date_filter</p>";
}
echo "<p>Total Students Present: <strong>$present_count</strong></p>";
echo "<p>Total Students Absent: <strong>$absent_count</strong></p>";

$conn->close();
?>

</body>
</html>



