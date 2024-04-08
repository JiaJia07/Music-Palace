<?php 
     session_start();
     echo "<script>
     alert('Logout succesfully!');
     window.location.href='/Assignment/index.php';
     </script>";
    session_destroy();

?>
