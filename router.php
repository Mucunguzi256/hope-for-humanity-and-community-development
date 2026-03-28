<?php
$root = $_SERVER['DOCUMENT_ROOT'];
$uri = urldecode(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
$file = $root . $uri;

// Serve existing static files directly (css, js, images, etc)
if ($uri !== '/' && file_exists($file) && !is_dir($file)) {
    return false;
}

// Route everything else through WordPress
$_SERVER['SCRIPT_FILENAME'] = $root . '/index.php';
$_SERVER['PHP_SELF'] = '/index.php';
require_once $root . '/index.php';
