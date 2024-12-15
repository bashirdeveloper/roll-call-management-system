
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
$students = [];
$sql = "SELECT * FROM students";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $students[] = $row;
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $attendance_date = $_POST['date'] ?? date('Y-m-d');

    // Loop through the students and record attendance
    foreach ($students as $student) {
        $student_id = $student['id'];
        $status = isset($_POST['student_'.$student_id]) ? 'present' : 'absent';

        // Check for duplicate entries (same student, same date)
        $check_sql = "SELECT * FROM attendance WHERE student_id = $student_id AND date = '$attendance_date'";
        $check_result = $conn->query($check_sql);

        if ($check_result->num_rows === 0) {
            // If no duplicate, insert the attendance record
            $sql = "INSERT INTO attendance (student_id, date, status) VALUES ($student_id, '$attendance_date', '$status')";
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

    <table border="1" cellpadding="10">
        <thead>
            <tr>
                <th>Student Name</th>
                <th>Present</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($students as $student): ?>
                <tr>
                    <td><?php echo $student['first_name'] . " " . $student['last_name']; ?></td>
                    <td>
                        <input type="checkbox" name="student_<?php echo $student['id']; ?>" checked>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <input type="submit" value="Submit Attendance">
</form>

</body>
</html>
