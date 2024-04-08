<!-- Select Electric Guitars from SQL -->
<?php
    require_once '../../Includes/DatabaseConnection.php'; //connect to database
    $query = "SELECT * FROM items WHERE Item_name LIKE ?";
    $stmt = mysqli_prepare($conn, $query);
    $guitar = '%electric%';
    mysqli_stmt_bind_param($stmt, "s", $guitar);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
?>

<!DOCTYPE html>
<html>
    <head>
    <title>Electric Guitars | Music Palace</title>
    <link href="/Assignment/style/ItemPageStyle.css" rel="stylesheet">                
        <?php         
            include('../../Includes/header.php');
            include("../../Includes/nav.php");
            require 'ElectricGuitarPageHeader.php';?>      
    </head>
    <body>        
    <main>
            <?php
                while($row=mysqli_fetch_assoc($result)){
            ?>
            <form method="post" action="../Item Details/index.php">
            <button type="submit" name="id" value="<?php echo $row["Item_ID"]; ?>" class="card">
            <div class="card">
                <div class="image">
                    <img src="/Assignment/Includes/Images/Items/<?php echo $row["Item_img"]; ?>" alt="">
                </div>
                <div class="caption">
                    <br>                   
                    <p class="product_name"><?php echo $row["Item_name"]?></p>
                    <p class="product_price">RM <?php echo $row["Item_price"]?></p>
                </div>
            </div>
            </button>
            </form>
            <?php
                }
            ?>
        </main> 
        <?php include('../../Includes/footer.php');?>
    </body>
</html>