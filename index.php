<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>URL Shortener</title>
    <link rel="stylesheet" href="./stylesheet/style.css">
</head>
<body>
    <div class="container">
        <div id="app">
            <h1>Shorten A URL</h1>
            <?php
                if(isset($_SESSION['feedback'])){
                    echo "<p>{$_SESSION['feedback']}</p>";
                    unset($_SESSION['feedback']);
                }
            ?>
            <form action="shorten.php" method="POST">
                <input type="url" name="url" placeholder="Type a URL" autocomplete="off" required>
                <button type="submit">Shorten</button>
            </form>
        </div>
    </div>
</body>
</html>