<?php 
    require_once '../Includes/DatabaseConnection.php'; //connect to database
    $username=$_POST['username-login'];
    $password=$_POST['password-login'];
    $accountquery = "SELECT * FROM account WHERE username = ?"; //get row from database that shares the same input as user.
    $stmt = mysqli_prepare($conn,$accountquery);
    mysqli_stmt_bind_param($stmt,"s",$username);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    
    //if there are no result from the query means that the username does not exist in database
    if(mysqli_num_rows($result)<=0){
        echo "<script>
        alert('User not found!');
        window.location.href='/Assignment/index.php';
        </script>";
    }

    //else the username is in the database, so match with the password
    else{
        $row = mysqli_fetch_assoc($result);
        //if same password, login succesfully
        if($password == $row['password']){
            session_start();
            $_SESSION['isLogged']=TRUE;
            //redirect the user to the previous page
            echo "<script>
            alert('Login succesfully!');
            window.location.href='/Assignment/index.php';
            </script>";
            exit();
    }

        //wrong password, login fail
        else{
            echo "<script>
            alert('Wrong password! Please try again.');
            window.location.href='/Assignment/index.php';
            </script>";
        }}
?>