<!DOCTYPE html>
<html>
<head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

body {
      margin: 0;
      padding: 0;
    }
    
#pageHeader {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 130px;
    width: 100%;
    background-color: #0B0B0B;
    padding: 0 50px;
    box-sizing: border-box;
    font-family: 'TT Norms', sans-serif;
    color: white;
    border-bottom: 2px solid #1ADDD1;
    }
    
#logo img{
    width: 120px;
    }


#searchBar {
    display: flex;
    align-items: center;
    background-color: #C3C3C3;
    height: 40px;
    border-radius:5px;
    padding: 5px;
    box-sizing: border-box;
    margin-right: 20px;
    }

#searchInput {
    flex: 1;
    border: none;
    background-color: transparent;
    border-radius:5px;
    font-size: 16px;
    font-family: Arial, Helvetica, sans-serif;
    margin-right: 10px;
}

#searchButton {
    background-color: #1ADDD1;
    color: #FFFFFF;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    font-family: Arial, Helvetica, sans-serif;
    padding: 8px 16px;
    cursor: pointer;
    margin-left: 10px;
}

#logoutIcon,
#cartIcon,
#loginIcon {
    height: 25px;
    margin-left: 20px;
    cursor: pointer;
}

#nav {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 50px;
    width: 100%;
    background-color: #FFFFFF;
    font-family: Arial, Helvetica, sans-serif;
    border-bottom: 2px solid #1ADDD1;
}

#nav a {
    color: #1ADDD1;
    text-decoration: none;
    margin: 0 20px;
    font-size: 18px;
    }

#loginButton {
    background-color: transparent;
    border: none;
    padding: 0;
    margin: 0;
    cursor: pointer;
}

a.register-account-link {
  color: red;
  cursor:pointer;
  text-decoration:underline;
}

a.register-account-link:hover {
  color: blue;
}

/* by default make the popup transparent */
.form-popup {
  display: none;
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  border: 3px solid #E6E6E6;
  z-index: 9;
  background-color: #464646;
  max-width: 500px;
  padding: 30px;
  animation-name: fadeIn;
  animation-duration: 0.5s;
  border-radius:10px;

}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
.form-container h1 {
  color: #E6E6E6;
  margin-bottom: 20px;
  text-align: center;
}

.form-container {
  width: 400px; 
}

.form-container label {
  color: #7a7a7a;
  display: block;
  margin-bottom: 8px;
}

.form-container input[type=text],
.form-container input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  border-radius: 5px;
}

.form-container button[type=submit] {
  background-color: #1ADDD1;
  color: #fff;
  padding: 12px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  width: 100%;
  margin-top: 10px;
  font-size: 16px;
}

.form-container button[type=submit]:hover {
  background-color: #0daca1;
}

.closeButton {
  position: absolute;
  top: 0;
  right: 0;
  background: transparent;
  border: none;
  font-size: 1.5rem;
  color: #E6E6E6;
  cursor: pointer;
}

/* Style the checkbox */
#show-password {
  display: inline-block;
  vertical-align: middle;
  margin-left: 10px;
  cursor:pointer;
}

/* Style the label text */
#show-password + label {
  font-size: 14px;
  color: #333;
  cursor: pointer;
}
</style>

</head>
<body>
  <?php session_start(); ?>
  <header id='pageHeader'>
    <!-- logo of the website -->
    <a href="/Assignment/index.php"> 
        <div id="logo"><img src="/Assignment/Includes/Images/Navigation Buttons/logo.png" alt="Logo"></div>        
        </a>

    <!-- search function -->
    <div id="searchBar">
      <form action="/Assignment/Includes/search.php" method="post">
        <input type="text" required name="search" id="searchInput" placeholder="Search">
        <button id="searchButton" name="submit">Search</button>
      </form>
    </div>

    <!-- cart function and login function -->
    <div>
    <?php if (isset($_SESSION['isLogged'])) { ?>
      <a href="http://localhost/Assignment/Cart/index.php"><img id="cartIcon" src="/Assignment/Includes/Images/Navigation Buttons/cart.png" alt="Cart Icon"></a>
      <a href="/Assignment/Account/logout.php"><img id="logoutIcon" src ="/Assignment/Includes/Images/Navigation Buttons/logout.png" alt ="Logout Icon"></a>
    <?php } 

    else if (!isset($_SESSION['isLogged'])) {?>
    <button id="loginButton" onclick="openForm('login-form')"><img id="loginIcon" src="/Assignment/Includes/Images/Navigation Buttons/login.png" alt="Login Icon"></button>

  <!--login account form-->
    <div class ="form-popup" id="login-form">
    <form action='/Assignment/Account/login-process.php' method='post' id='login' class = "form-container">
      <h1>Login</h1>
      <label for='username-login'>Username</label>
      <input type='text' placeholder= 'Enter username' name ='username-login' required>

      <label for="password-login">Password</label>
      <input type="password" placeholder= 'Enter password' id="password-login" name="password-login">

      <br><br>
      <label for="show-password-login">
      <input type="checkbox" id="show-password-login"> Show password

      </label><p>Don't have an account? Press<a class = "register-account-link" onclick="openForm('register-form');closeForm('login-form')" > here </a> to register!</p>
      <button type='submit'> Login </button>
      <button type="button" class="closeButton" onclick="closeForm('login-form')" >X</button>
      </form> 
    </div>

    <!-- register account form -->
      <div class = "form-popup" id ="register-form" >
      <form action='/Assignment/Account/register-process.php' method='post' id='register' class = "form-container">
          <h1>Register</h1>
          <label for='username-register'>Username</label>
          <input type='text' placeholder= 'Enter username' name ='username-register' required>

          <label for="password-register">Password</label>
          <input type="password" placeholder= 'Enter password' id="password-register" name="password-register">

          <br><br>
          <label for="show-password-register">
          <input type="checkbox" id="show-password-register"> Show password
          
          <button type='submit'> Register </button>
          <button type="button" class="closeButton" onclick="closeForm('register-form')">X</button>
      </form> 
      </div>
      <?php } ?>
</div>
  </header>
</body>
</head>

<script>
//to open hidden form
function openForm(form) {
  document.getElementById(form).style.display = "block";
}

//to close hidden form
function closeForm(form) {
  document.getElementById(form).style.display = "none";
}

//to change password type (from password to text or text to password)
const passwordInputLogin = document.getElementById("password-login");
const showPasswordCheckboxLogin = document.getElementById("show-password-login");

showPasswordCheckboxLogin.addEventListener("change", function() {
  if (showPasswordCheckboxLogin.checked) {
    passwordInputLogin.type = "text";
  } else {
    passwordInputLogin.type = "password";
  }
});

//to change password type (from password to text or text to password)
const passwordInputRegister = document.getElementById("password-register");
const showPasswordCheckboxRegister = document.getElementById("show-password-register");

showPasswordCheckboxRegister.addEventListener("change", function() {
  if (showPasswordCheckboxRegister.checked) {
    passwordInputRegister.type = "text";
  } else {
    passwordInputRegister.type = "password";
  }
});
</script>

</body>
</html>
