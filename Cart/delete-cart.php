<?php
session_start();

// Get the itemNo from the AJAX request
$itemNo = $_POST['itemNo'];

// Loop through the session cart and find the item with the matching ID
foreach ($_SESSION['cart'] as $i => $item) {
  if ($item['no'] == $itemNo) {
    //Delete the item from session cart
    unset($_SESSION['cart'][$i]);
    break;
  }
}
