<?php
session_start();
include('C:\xampp\htdocs\resepbiyu123\db\koneksi.php'); // koneksi ke database MySQL

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = mysqli_real_escape_string($koneksi, $_POST['email']);
    $password = mysqli_real_escape_string($koneksi, $_POST['password']);

    // Cari user berdasarkan email
    $query = "SELECT * FROM users WHERE email = '$email'";
    $result = mysqli_query($koneksi, $query);

    if (mysqli_num_rows($result) == 1) {
        $user = mysqli_fetch_assoc($result);

        // Verifikasi password
        if (password_verify($password, $user['password'])) {
            // Set session
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $user['username'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['password'] = $user['password'];
            $_SESSION['foto'] = $user['foto'];

            echo "<script>alert('Login berhasil!'); window.location='index.php';</script>";
        } else {
            echo "<script>alert('Password salah!'); window.location='login.php';</script>";
        }
    } else {
        echo "<script>alert('Email tidak ditemukan!'); window.location='login.php';</script>";
    }
    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['role'] = $user['role']; // <--- ini penting
        header("Location: index.php");
        exit();
    }
    
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Login | ResepBiyu</title>
    <link rel="stylesheet" href="api/style.css">

</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form class="auth-form" method="POST" action="">
            <label>Email</label>
            <input type="email" name="email" required>

            <label>Password</label>
            <input type="password" name="password" required>

            <button type="submit">Masuk</button>
            <p>Belum punya akun? <a href="signup.php">Daftar di sini</a></p>
        </form>
    </div>
</body>
</html>
