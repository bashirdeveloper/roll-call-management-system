 
 <?php
session_start();
require 'dbconnect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // $username = $_POST['username'];
    // $password = $_POST['password'];
    $username = isset($_POST['username']) ? $_POST['username'] : null;
    $password = isset($_POST['password']) ? $_POST['password'] : null;
    $stmt = $pdo->prepare("SELECT * FROM users WHERE username = :username LIMIT 1");
    $stmt->execute(['username' => $username]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    // Verify the password and check the user role
    if ($user && md5($password) === $user['password']) { // Replace md5() with password_verify() if using PASSWORD_HASH
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $user['username'];
        $_SESSION['role'] = $user['role'];

        // Redirect based on role
        if ($user['role'] === 'admin') {
            header("Location: homepage.php");
        } else {
            header("Location: teachers_dashboard.php");
        }
        exit;
    } else {

       $error_message = "wrong credentials! Please try again.";
    echo "<script>
            alert('Error: $error_message');
            history.back();
          </script>";
    }
}
?>
