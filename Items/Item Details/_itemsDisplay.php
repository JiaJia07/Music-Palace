<div class = content>
<form action = "../../Cart/index.php" method = "post">
<div class = "item_details_title">
    <h2><?= $name ?></h2>
    <input type = "text" name = "id" value = <?= $id ?> hidden>

</div>
<div class = "item_details_img_cont">
    <img class="item_details_img" src="/Assignment/Includes/Images/Items/<?= $image ?>" alt="<?= $name ?>" />
</div>
<div class = "item_details_left">
    <h3>About This Product</h3>
    <p><?= $description ?></p>
</div>
<div class = "item_details_right">
    <p id = "price" = >RM <?= $price ?> </p>
    <p>Quantity: <input type = "number" name = "quantity" value = "1" min = "1" max = "10"></p>
    <?php if (isset($_SESSION['isLogged'])){ ?>
    <input type = "text" name = "name" value = <?= urlencode($name) ?> hidden>
    <input type = "text" name = "price" value = <?= $price ?> hidden>
    <input type = "text" name = "image" value = <?= $image ?> hidden>
    <input type = "submit" name = "submit" value = "Add to Cart"> <?php }
    
    else {?>
       <button type="button" class="cart-button" onclick=" openForm('login-form')">Add to Cart</button><?php } ?>
    
</div>
</form>
</div>

    