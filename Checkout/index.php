<!DOCTYPE html>
<html>
<head>
	<title> Checkout | Music Palace </title>
    <link rel="stylesheet" href="../style/CheckoutStyle.css">
    <?php
    include('../Includes/header.php');
    include("../Includes/nav.php"); ?>
</head>
<body class="checkout_body">
    <?php   
    if ($_SERVER['REQUEST_METHOD'] == 'POST') 
    $total = $_POST['total'];
    ?>

<div class = "checkout_form">
    <h1 style="font-weight:bold;color:black; text-shadow:1px 1px 3px #ccc">CHECKOUT</h1>
    <div class="form">
    <form action="post-message.php" method="POST">
        <table>
        <tr>
        <td colspan="2" style="text-align:center;">
        <h2 style="font-weight:bold;color:#4CAF50; text-shadow:1px 1px 3px #ccc;">
        <span style="font-size:36px;">TOTAL PRICE:</span> <span style="font-weight:normal; font-size:36px;"><?php echo "RM {$total}"; ?></span>
            </h2>
         </td>
        </tr>
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" name="name" id="name" class="form-input" required></td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><input type="email" name="email" id="email" class="form-input" required></td>
            </tr>
            <tr>
                <td><label for="address">Address:</label></td>
                <td><textarea name="address" id="address" class="form-input" required></textarea></td>
            </tr>
            <tr>
                <td><label for="phone">Phone Number:</label></td>
                <td><input type="tel" name="phone" id="phone" class="form-input" required></td>
            </tr>
            <tr>
                <td><label for="payment">Payment Method:</label></td>
                <td>
                    <select name="payment" id="payment" class="form-select" required>
                        <option value="">Select Payment Method</option>
                        <option value="cash">Cash on Delivery</option>
                        <option value="card">Credit/Debit Card</option>
                        <option value="online">Online Banking</option>
                    </select>
                </td>
            </tr>
        </table>
        <input type = "text" name = "orderAmount" value = <?= $total ?> hidden>
        <input type="submit" value="Pay" class="form-button">
    </form>
</div>
</div>
    <?php
    include('../Includes/footer.php');
    ?>
</body>
</html>