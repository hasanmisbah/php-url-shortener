<?php
session_start();
require_once './classes/Shortener.php';

$s = new Shortener;

if(isset($_POST['url'])){

    $url = $_POST['url'];
    if($code = $s->makeCode($url)){
        $_SESSION['feedback'] = "Generated! your url is <a href=\"http://localhost/php-url-shortener/{$code}\">http://localhost/php-url-shortener/{$code}</a>";
    }else{
        $_SESSION['feedback'] = "There was a problem to Shorten your URL. invalid URL, Perhaps?";
    }
}
header('Location: ./index.php');