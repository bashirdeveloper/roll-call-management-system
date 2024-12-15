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
      border-right: 1px solid #ddd;
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
        <li><a href="#">Users</a></li>
        <li class="active"><a href="primaryone.php">Primary One</a></li>
        <li ><a href="primarytwo.php">Primary Two</a></li>
        <li ><a href="primarythree.php">Primary Three</a></li>
        <li><a href="primaryfour.php">Primary Four</a></li>
        <li><a href="primaryfive.php">Primary Five</a></li>
        <li><a href="primarysix.php">Primary Six</a></li>
        <li><a href="primaryseven.php">Primary Seven</a></li>
        <li><a href="#">Summary </a></li>
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
        <li><a href="#section1">RCM System</a></li>
        <li><a href="#">Users</a></li>
        <li><a href="primaryone.php">Primary One</a></li>
        <li><a href="primarytwo.php">Primary Two</a></li>
        <li><a href="primarythree.php">Primary Three</a></li>
        <li><a href="primaryfour.php">Primary Four</a></li>
        <li><a href="primaryfive.php">Primary Five</a></li>
        <li><a href="primarysix.php">Primary Six</a></li>
        <li><a href="primaryseven.php">Primary Seven</a></li>
        <li class="active"><a href="student_registration.php">Add Students </a></li>
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
        <div class="col-sm-9" >
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


// Default settings
$class = $_POST['class'] ?? 'students'; // Default class
$update = false; // Check if we're in update mode
$update_id = 0;
$first_name = "";
$last_name = "";

// Add new student
if (isset($_POST['add_student'])) {
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];

    $conn->query("INSERT INTO $class (first_name, last_name) VALUES ('$first_name', '$last_name')");
    // header("Location: student_registration.php");
    exit();
}

// Delete student
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $class = $_GET['class'];
    $conn->query("DELETE FROM $class WHERE id = $id");
    // header("Location: student_registration.php");
    exit();
}

// Edit student (fetch data)
if (isset($_GET['edit'])) {
    $update = true;
    $update_id = $_GET['edit'];
    $class = $_GET['class'];

    $result = $conn->query("SELECT * FROM $class WHERE id = $update_id");
    if ($row = $result->fetch_assoc()) {
        $first_name = $row['first_name'];
        $last_name = $row['last_name'];
    }
}

// Update student
ob_start();
if (isset($_POST['update_student'])) {
    $id = $_POST['update_id'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];

    $conn->query("UPDATE $class SET first_name='$first_name', last_name='$last_name' WHERE id=$id");
    // header("Location: student_registration.php");
    
}

// Fetch students
$result = $conn->query("SELECT * FROM $class");
?>

<!-- !DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body { padding: 20px; }
        h2 { margin-bottom: 20px; }
    </style>
</head>
<body> -->
    <div class="container">
        <h2 class="text-center">Manage Students</h2>

        <!-- Class Selection -->
        <form action="student_registration.php" method="POST" class="form-inline text-center">
            <div class="form-group">
                <label for="class">Select Class: </label>
                <select name="class" id="class" class="form-control" onchange="this.form.submit()">
                    <option value="primary1" <?php if($class == 'students') echo 'selected'; ?>>Primary 1</option>
                    <option value="primary2" <?php if($class == 'primary2') echo 'selected'; ?>>Primary 2</option>
                    <option value="primary3" <?php if($class == 'primary3') echo 'selected'; ?>>Primary 3</option>
                    <option value="primary4" <?php if($class == 'primary4') echo 'selected'; ?>>Primary 4</option>
                    <option value="primary5" <?php if($class == 'primary5') echo 'selected'; ?>>Primary 5</option>
                    <option value="primary6" <?php if($class == 'primary6') echo 'selected'; ?>>Primary 7</option>
                    <option value="primary7" <?php if($class == 'primary7') echo 'selected'; ?>>Primary 7</option>
                </select>
            </div>
        </form>
      </div>

        <!-- Add / Update Form -->
        <div class="well">
            <form action="student_registration.php" method="POST" class="form-inline">
                <input type="hidden" name="class" value="<?php echo $class; ?>">
                <input type="hidden" name="update_id" value="<?php echo $update_id; ?>">

                <div class="form-group">
                    <input type="text" name="first_name" class="form-control" 
                           placeholder="First Name" value="<?php echo $first_name; ?>" required>
                </div>
                <div class="form-group">
                    <input type="text" name="last_name" class="form-control" 
                           placeholder="Last Name" value="<?php echo $last_name; ?>" required>
                </div>
                <?php if ($update): ?>
                    <button type="submit" name="update_student" class="btn btn-success">Update</button>
                <?php else: ?>
                    <button type="submit" name="add_student" class="btn btn-primary">Add New User</button>
                <?php endif; ?>
            </form>
        </div>

        <!-- Students Table -->
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr>
                    <td><?php echo $row['id']; ?></td>
                    <td><?php echo $row['first_name']; ?></td>
                    <td><?php echo $row['last_name']; ?></td>
                    <td>
                        <a href="student_registration.php?edit=<?php echo $row['id']; ?>&class=<?php echo $class; ?>" 
                           class="btn btn-xs btn-warning">Update</a>
                        <a href="student_registration.php?delete=<?php echo $row['id']; ?>&class=<?php echo $class; ?>" 
                           class="btn btn-xs btn-danger" onclick="return confirm('Are you sure?');">Delete</a>
                    </td>
                </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
</body>
</html>


 </div>
        </div>
        
      </div>
    </div>
</body>
</html>

      
