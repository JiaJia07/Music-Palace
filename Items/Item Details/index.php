<!DOCTYPE html>
<html>
<head>
    <title>Item Details | Music Palace </title>
    <link rel="stylesheet" href = "../../style/ItemDetailsStyle.css">
    <?php         
            include('../../Includes/header.php');
            include("../../Includes/nav.php");?>
</head>
<body class = "item_details">
<?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST')
    {
        require_once '../../Includes/DatabaseConnection.php'; //connect to database
        $query = "SELECT * FROM items WHERE ITEM_ID = ?";
        $stmt = mysqli_prepare($conn, $query);
        mysqli_stmt_bind_param($stmt, "s", $_POST['id']);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        $row = mysqli_fetch_assoc($result);
        $id = $row['Item_ID'];
        $name = $row['Item_name'];
        $price = $row['Item_price'];
        $description = $row['Item_description'];
        $image = $row['Item_img'];
    }
    include('_itemsDisplay.php');
    include('../../Includes/footer.php')
?>
</body>

   