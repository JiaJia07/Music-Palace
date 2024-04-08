<!DOCTYPE html>
<html>
<head>
    <title> Contact Us | Music Palace </title>
    <link rel = "stylesheet" href = "../style/ContactStyle.css"/>
    <?php         
            include('../Includes/header.php');
            include("../Includes/nav.php");
            use PHPMailer\PHPMailer\PHPMailer;
            use PHPMailer\PHPMailer\SMTP;
            use PHPMailer\PHPMailer\Exception;
            
            require '../vendor/autoload.php';?>
</head>
<body>
<?php
    $message = "";
    $isValid = true;
    if ($_SERVER['REQUEST_METHOD'] == 'POST')
    {
        
        if(empty(trim($_POST['name'])) || empty(trim($_POST['email'])) ||  empty(trim($_POST['subject'])) || empty(trim($_POST['message'])))
        {
            $message = "*Please fill in all the fields";
            $isValid = false;
        }
        else if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))
        {
            $message = "*Invalid email format";
            $isValid = false;
        }

        if($isValid)
        {
            try {
                // //Server settings
                // $mail = new PHPMailer(true);
                // $mail->isSMTP();
                // $mail->Host       = 'smtp.gmail.com';
                // $mail->SMTPAuth   = true;
                // $mail->Username   = 'youremail@gmail.com';                    
                // $mail->Password   = 'yourpassword';                               
                // $mail->SMTPSecure = 'ssl';            
                // $mail->Port       = 465;                 

                // $mail->setFrom('youremail@gmail.com');
                // $mail->addAddress($_POST['email']);               
                        
                // //Content
                // $mail->isHTML(true);                                  
                // $mail->Subject = $_POST['subject'];
                // $mail->Body    = $_POST['message'];
        
                // $mail->send();
                // $mail->smtpClose();
                echo "
                <script>
                    window.open('post_message.php', '_self');
                </script>
                ";

            } catch (Exception $e) {
                echo "
                <script>
                    alert('Error sending the message. Please try again later.');
                </script>
                ";
            }  
        }
    }
    include('_form.php');
    include('../Includes/footer.php')
?>
</body>
</html>
