<?php
session_start();

// Get the itemNo and newQuantity values from the AJAX request
$itemNo = $_POST['itemNo'];
$newQuantity = $_POST['newQuantity'];

// Loop through the session cart and find the item with the matching ID
foreach ($_SESSION['cart'] as $i => $item) {
  if ($item['no'] == $itemNo) {
    // Update the quantity and total price of the item
    $_SESSION['cart'][$i]['quantity'] = $newQuantity;
    $_SESSION['cart'][$i]['totalprice'] = $item['price'] * $newQuantity;
    break;
  }
}
