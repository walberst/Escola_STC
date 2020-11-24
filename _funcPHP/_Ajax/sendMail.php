<?php

require '../phpMailer/Exception.php';
require '../phpMailer/PHPMailer.php';
require '../phpMailer/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
//use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      // Enable verbose debug output
    $mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'w4@gmail.com';                     // SMTP username
    $mail->Password   = '';                               // SMTP password
   // $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 587;   // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
    $mail->CharSet = 'UTF-8';                                 

    //Recipients
    $mail->setFrom('w4@gmail.com', 'Contato site');
    $mail->addAddress('w4@gmail.com');

    // Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = "Contato através do site || ".$_POST['assunto'];
    $mail->Body    = "<strong>Nome: </strong>".$_POST['nome']."<br><strong>Telefone:</strong>".$_POST['fone']."<br><strong>Email:</strong>".$_POST['email']."<br><strong>Assunto:</strong>".$_POST['assunto']."<br><strong>Mensagem:</strong>".$_POST['msg'];
    $mail->AltBody = "Nome: ".$_POST['nome']." || Telefone: ".$_POST['fone']." || Email: ".$_POST['email']." || Assunto: ".$_POST['assunto']." || Mensagem: ".$_POST['msg'];

    if ($mail->send()):
        echo json_encode("true");
    endif;
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}
