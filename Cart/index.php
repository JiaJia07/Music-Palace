<!DOCTYPE html>
<html>
<head>
<title> Cart | Music Palace </title>
<link rel="stylesheet" href = "../style/CartStyle.css">
<?php
include('../Includes/header.php');
include("../Includes/nav.php"); ?>
</head>
<body>
<?php
    if ($_SESSION['isLogged']===true){
        $total = 0;
        if (!isset($_SESSION['cart'])&&!isset($_SESSION['no'])) {
            $_SESSION['cart'] = array();

            //use to store cart array index, as if assigned no by using count($_SESSION['cart']), in the case if we have 3 orders,
            //we deleted second order, the newly added order and the new second order will have the same no.
            $_SESSION['no']=array();
          }
        
          if ($_SERVER['REQUEST_METHOD'] == 'POST')
          {
            array_push($_SESSION['no'],count($_SESSION['no'])+1);
                
            array_push($_SESSION['cart'], array(
                'no' => count($_SESSION['no']),  
                //to make sure full name is retrieved including space
                'image' =>$_POST['image'],
                'name' => urldecode($_POST['name']),
                'quantity' => $_POST['quantity'],
                'price' => $_POST['price'],
                'totalprice' => $_POST['price']*$_POST['quantity']
                ));
          }

          if (empty($_SESSION['cart'])) {
            echo "<div style='text-align:center; font-size: 2em; margin-top: 50px;'>The cart is empty.</div>";
            echo"<br>";
            echo"<br>";
            echo"<br>";
            echo"<br>";
            echo"<br>";

          } else {
            echo"
            <div class='cart'>
            <table>
              <tr>
                <th>Product</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Total Price</th>
                <th></th>
              </tr>";
              foreach ($_SESSION['cart'] as $item){ echo"
                <tr>
                  <td><img src='/Assignment/Includes/Images/Items/{$item['image']}' alt='{$item['image']}'></td>
                  <td>{$item['name']}</td>
                  <td><button onclick='updateQuantity(-1, {$item['no']},{$item['quantity']})' class = 'quantity-button'>-</button>
                  {$item['quantity']} 
                  <button onclick='updateQuantity(1, {$item['no']},{$item['quantity']})' class = 'quantity-button'>+</button></td>
                  <td>RM{$item['totalprice']}</td>
                  <td><button class = 'delete-button' onclick = 'deleteItem({$item['no']})'>Delete</button></td>
                </tr>";
              }
            echo "
            </table>";

            foreach ($_SESSION['cart'] as $item){
              $total += (float)$item['price'] * (int)$item['quantity'];
          }

            echo "
            <form action='../Checkout/index.php' method='post'>
              <table class='checkout'>
                <tr>
                  <td>Delivery Charges:</td>
                  <td style='font-weight: bold; color: green;'>FREE</td>
                </tr>
                <tr>
                  <td>Total Price:</td>
                  <td>RM{$total}</td>
                </tr>
                <tr>
                  <td colspan='2'><button type='submit' class = 'checkout-button'>Checkout</button></td>
                </tr>
              </table>
              <input type = 'text' name = 'total' value ='{$total}' hidden>
            </form>
          </div>"
                ;

          }
}
include('../Includes/footer.php')
?>

</body>
</html>

<script>

function updateQuantity(amount, itemNo,itemQuantity) {
  var newQuantity = itemQuantity+amount;

  if (newQuantity>10 || newQuantity <= 0){
    alert("Invalid Range!");
  }

  else {
  // Send an AJAX request to update the cart item quantity
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      // Go to cart.php to display the updated cart (if reload upon adding an item to cart, the most recent item will keep append to the cart)
      window.location.href = "index.php";
    }
  };
  xhttp.open("POST", "update-cart.php", true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send("itemNo=" + itemNo + "&newQuantity=" + newQuantity);
}
}

function deleteItem(itemNo){
  // Send an AJAX request to delete the cart item
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      // Go to cart.php to display the updated cart (if reload upon adding an item to cart, the most recent item will keep append to the cart)
      window.location.href = "index.php";
    }
  };
  xhttp.open("POST", "delete-cart.php", true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send("itemNo=" + itemNo);
}
</script>