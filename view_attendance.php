<?php
$host = "localhost";
$db_name = "roll_call_system";
$username = "root"; // Change this to your MySQL username
$password = ""; // Change this to your MySQL password

$conn = new mysqli($host, $username, $password, $db_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch students
$students = [];
$sql = "SELECT * FROM students";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $students[] = $row;
    }
}

// Handle filter by date or student
$attendance_records = [];
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $selected_date = $_POST['date'] ?? null;
    $selected_student_id = $_POST['student_id'] ?? null;

    $query = "SELECT a.*, s.first_name, s.last_name FROM attendance a JOIN students s ON a.student_id = s.id WHERE 1=1";

    if ($selected_date) {
        $query .= " AND a.date = '$selected_date'";
    }
    if ($selected_student_id) {
        $query .= " AND a.student_id = $selected_student_id";
    }

    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $attendance_records[] = $row;
        }
    } else {
        echo "No attendance records found.";
    }
}

$conn->close();
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
        <?php foreach ($students as $student): ?>
            <option value="<?php echo $student['id']; ?>">
                <?php echo $student['first_name'] . " " . $student['last_name']; ?>
            </option>
        <?php endforeach; ?>
    </select><br><br>

    <input type="submit" value="View Attendance">
</form>

<!-- Display attendance records -->
<?php if (!empty($attendance_records)): ?>
    <h3>Attendance Records</h3>
    <table 
        <thead>
            <tr>
                <th>Date</th>
                <th>Student Name</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($attendance_records as $record): ?>
                <tr>
                    <td><?php echo $record['date']; ?></td>
                    <td><?php echo $record['first_name'] . " " . $record['last_name']; ?></td>
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

</body>
</html>
