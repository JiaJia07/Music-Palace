<!DOCTYPE html>
<html>
    <head>
    <title>Music Palace | Your One-Stop Music Store</title>
    <link href="/Assignment/style/HomePageStyle.css" rel="stylesheet">                
        <?php         
            include('./Includes/header.php');
            include("./Includes/nav.php");
            require './Items/Item Page/AllItemsPageHeader.php';?>      
    </head>
    <body>             
                    <div class="shop-content">                        
                        <div class="product-box">   
                            <a href="http://localhost/Assignment/Items/Item%20Page/AcousticGuitarPage.php">                                                   
                            <img src="./Includes/Images/Items/ag10.jpg" alt="AG" style="max-width:300px;">                          
                            <p class="product_name">Acoustic Guitars</p>  
                            </a>                                                        
                        </div>    
                        <div class="product-box">
                            <a href="http://localhost/Assignment/Items/Item%20Page/ElectricGuitarPage.php"> 
                            <img src="./Includes/Images/Items/eg5.jpg" alt="EG" style="max-width:300px">
                            <p class="product_name">Electric Guitars</p>
                            </a>  
                        </div>                                                       
                        <div class="product-box">
                            <a href="http://localhost/Assignment/Items/Item%20Page/PianoPage.php"> 
                            <img src="./Includes/Images/Items/dp6.jpg" alt="DP" style="max-width:300px">
                            <p class="product_name">Digital Piano</p>
                            </a>  
                        </div>
                        <div class="product-box">
                            <a href="http://localhost/Assignment/Items/Item%20Page/KeyboardPage.php">  
                            <img src="./Includes/Images/Items/k6.jpg" alt="K" style="max-width:300px">
                            <p class="product_name">Keyboard</p>
                            </a> 
                        </div>
                        <div class="product-box">  
                             <a href="http://localhost/Assignment/Items/Item%20Page/DrumsPage.php">                              
                            <img src="./Includes/Images/Items/dr5.jpg" alt="D" style="max-width:300px">
                            <p class="product_name">Drums</p>
                            </a>  
                        </div> 
                    </div>      
                    <img id='insta'src="/Assignment/Includes/Images/Home Page Images/insta.png">      
                    <img id='footerpic' src="/Assignment/Includes/Images/Home Page Images/footer.png">         
    <?php include('./Includes/footer.php');?>
    </body>
</html>