<?php

?>
<!DOCTYPE html>
<html lang="en">
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
    .w3-bar,h1,button {font-family: "Montserrat", sans-serif}
    {font-size:200px}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
    <div class="w3-bar w3-red w3-card w3-left-align w3-large">
        <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
        <a href="#" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
        <a href="Data.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Data</a>
    </div>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
        <a href="#" class="w3-bar-item w3-button w3-padding-large">Data</a>

    </div>
</div>

<!-- Header -->
<header class="w3-container w3-red w3-center" style="padding:128px 16px">
    <h1 class="w3-margin w3-jumbo">Home Page</h1>
    <p class="w3-xlarge">Template by w3.css</p>
    <button onclick="location.href='Data.php'" class="w3-button w3-black w3-padding-large w3-large w3-margin-top">See Data</button>
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
    <div class="w3-content">
        <div class="w3-twothird">
            <h1>About the project <i class="fa fa-lightbulb-o fa-2x w3-padding-32 w3-text-red "></i></h1>
            <h5 class="w3-padding-32">For this project I have to pick a dataset and display it in a readable format - which can be found on the data page - and be outputted into a RDF(Resource Description Framework) format. </h5>

        </div>
        <p>The <a href="https://plymouth.thedata.place/dataset/active-library-users-by-age/resource/dde47275-1a23-402a-a40d-bba7d7c50955" target="_blank">dataset</a> that I have picked is based on the amount of active library users in plymouth according to age groups ranging from 0 to 100.</p>
        <p> I have also transformed my dataset into a machine readable format which can be found <a href="Entity/Library.php">here</a></p>
    </div>


    <!-- Footer -->
    <footer class="w3-container w3-padding-32 w3-center w3-opacity">
        <div class="w3-xlarge w3-padding-32">

            <i class="fa fa-facebook-official w3-hover-opacity"></i>
            <i class="fa fa-instagram w3-hover-opacity"></i>
            <i class="fa fa-snapchat w3-hover-opacity"></i>
            <i class="fa fa-pinterest-p w3-hover-opacity"></i>
            <i class="fa fa-twitter w3-hover-opacity"></i>
            <i class="fa fa-linkedin w3-hover-opacity"></i>
        </div>
        <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
    </footer>



</body>
</html>
