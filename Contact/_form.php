<div class = "contact">
<div class = "contact_us">
    <h1>Contact Us</h1>
    <div class = "contact_info">
        <p><span class="emphasized">Phone number: </span>+6012-345 6789</p>
        <p><span class="emphasized">Email address: </span>info@musicpalace.com</p>
    </div>
</div>

<div class = "contact_form">
    <h1>Contact Form</h1>
<div class = "form">
<form action = '<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>' method = 'post'>
    <p style="color: red"><?php echo $message?></p> 
    <label for "name">Name</label><br>
    <input type = "text" name = "name" id = "name"><br>

    <label for "email">Email</label><br>
    <input type = "text" name = "email" id = "email"><br>

    <label for "subject">Subject</label><br>
    <input type = "text" name = "subject" id = "subject"><br>

    <label for "message">Message</label><br>
    <textarea name = "message" id = "message" row = 10 col = 30></textarea><br>
    <input type = "submit" name = "contact_task" value = "Submit">

</form>
</div>
</div>
</div>
