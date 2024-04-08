<!DOCTYPE html>
<html>
<head>
    <title> Order Received | Music Palace </title>
    <link rel = "stylesheet" href = "../style/ContactStyle.css"/>
    <?php include "../Includes/header.php";
        include "../Includes/nav.php";?>
</head>
<body>
<?php 
    require_once '../Includes/DatabaseConnection.php'; //connect to database
    $orderAmount=$_POST['orderAmount'];
    $orderName=$_POST['name'];
    $query = "INSERT INTO orders (orderAmount,orderName)
    VALUES (?,?)";

    //prepare statement to prevent sql injection
    $stmt =  mysqli_prepare($conn,$query);

    mysqli_stmt_bind_param($stmt,"ss", $orderAmount,$orderName);
    if(mysqli_stmt_execute($stmt)){   
        mysqli_stmt_close($stmt);
        mysqli_close($conn);
    }

    else {
        die ("Insert Error".mysqli_error($conn));
    }
?>

    <div class = "thankYou">
    <h2>Thank you for purchasing!</h2>
    <p>Your order has been received.</p>
    </div>
    <?php include "../Includes/footer.php";?>
</body>
</html>