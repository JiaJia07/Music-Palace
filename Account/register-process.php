<?php 
    require_once '../Includes/DatabaseConnection.php'; //connect to database
    $username=$_POST['username-register'];
    $password=$_POST['password-register'];
    $accountquery = "SELECT * FROM account WHERE username = ?"; //get row from database that shares the same input as user.
    $stmt = mysqli_prepare($conn,$accountquery);
    mysqli_stmt_bind_param($stmt,"s",$username);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    //if there are result from the query means that the username already exist in database hence validation
    if(mysqli_num_rows($result)>0){
        echo "<script>
        alert('Username is used! Please use another username!');
        window.location.href='#';
        </script>";
    }

    //Else, username is not taken, hence can insert.
    else{
        $query = "INSERT INTO account (username,password)
        VALUES (?,?)";

    //prepare statement to prevent sql injection
    $stmt =  mysqli_prepare($conn,$query);

    mysqli_stmt_bind_param($stmt,"ss", $username,$password);
    if(mysqli_stmt_execute($stmt)){   
        mysqli_stmt_close($stmt);
        mysqli_close($conn);
        echo "<script> alert('Succesfully registered account!'); ;
        window.location.href='#' </script>";
    }

    else {
        die ("Insert Error".mysqli_error($conn));
    }

    }
?>