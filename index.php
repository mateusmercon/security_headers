<?php
header("X-XSS-Protection: 1; mode=block");
header("X-Frame-Options: DENY");
header("Strict-Transport-Security: max-age=31536000; includeSubDomains; preload");
header("X-Content-Type-Options: nosniff");
header("Referrer-Policy: no-referrer");
header("Content-Security-Policy: default-src 'self'; script-src 'self'; style-src 'self'; img-src 'self' data:;");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Headers de Segurança e Política de Segurança de Conteúdo</title>
</head>
<body>
    <h1>Headers de Segurança e Política de Segurança de Conteúdo</h1>
    <p>Um trabalho por Arthur Friço Grillo, Fabiano Baptista Castiglioni e Mateus Neves Merçon.</p>
</body>
</html>