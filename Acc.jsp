<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Account|Perfect Styles</title>
    <style><%@include file="styles.css"%></style>
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wgt@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
  </head>

  <body>
    <div class="container">
      <div class="navbar">
        <!-- <div class="logo">
          <img src="images/watch.png" width="50px" />
        </div> -->
        <nav>
          <ul id="MenuItems">
            <li><a href="index">Home</a></li>
            <li><a href="product">Products</a></li>
            <li><a href="index">About Us</a></li>
            <li><a href="#footer">Contact</a></li>
            <li><a href="Acc">Account</a></li>
          </ul>
        </nav>
        <img src="images/cart.png" width="30px" height="30px" />
        <img src="images/menu.png" class="menu-icon" onclick="menutoggle()" />
      </div>
    </div>
    <!-- Account/login -->
    <div class="account-page">
      <div class="container">
        <div class="row">
          <div class="col-2">
            <img src="images/image1.png" width="100%" />
          </div>
          <div class="col-2">
            <div class="form-container">
              <div class="form-btn">
                <span onclick="register()"> Register </span>
                <span onclick="login()"> login </span>
                <hr id="Indicator" />
              </div>
              <form id="RegForm" action="save" modelAttribute="Users">
                <input type="text" name="username"  id="username" placeholder="Username" />
                <input type="email" name="Email" id="Email" placeholder="Email" />
                <input type="password" name="password" id="password" placeholder="Password" />
                <button type="submit" class="btn">Register</button>
              </form>
              <form id="LoginForm" action="login" modelAttribute="Users">
                <input type="text" name="username"  id="username1" placeholder="Username" />
                <input type="password" name="password" id="password1" placeholder="Password" />
                <button type="submit" class="btn">Login</button>
                <a href="f_pass"><u>Forgot Password</u></a><br><br>
                <a href="admin"><u>Admin</u></a>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- footer -->
    <div id="footer" class="footer">
      <div class="container">
        <div class="row">
            <div class="footer-col-2">
                <h3>Contact Us</h3>
                <br>
                  Perfect_styles@gmail.com
                </p>
              </div>
          <div class="footer-col-1">
            <h3>Download app</h3>
            <p>Download app for Android and ios mobile phone.</p>
            <div class="app-logo">
              <img src="images/play-store.png" />
              <img src="images/app-store.png" />
            </div>
          </div>
         
          <div class="footer-col-3">
            <h3>Useful Links</h3>
            <ul>
              <li>Coupons</li>
              <br />
              <li>Blog Post</li>
              <br />
              <li>Return Policy</li>
              <br />
              <li>Join Affiliate</li>
            </ul>
          </div>
          <div class="footer-col-4">
            <h3>Follow us</h3>
            <ul>
              <li>Face Book</li>
              <br />
              <li>Twitter</li>
              <br />
              <li>Instagram</li>
              <br />
              <li>You Tube</li>
            </ul>
          </div>
        </div>
        <hr />
        <p class="copyright">Copyright 2021-Perfect Style</p>
      </div>
    </div>
    <!-- js strts -->
    <script>
      var MenuItems = document.getElementById("MenuItems");
      MenuItems.style.maxHeight = "0px";
      function menutoggle() {
        if (MenuItems.style.maxHeight == "0px") {
          MenuItems.style.maxHeight = "200px";
        } else {
          MenuItems.style.maxHeight = "0px";
        }
      }
    </script>
    <!-- js  for forms -->
    <script>
      var LoginForm = document.getElementById("LoginForm");
      var RegForm = document.getElementById("RegForm");
      var Indicator = document.getElementById("Indicator");

      function login() {
        RegForm.style.transform = "translateX(0px)";
        LoginForm.style.transform = "translateX(0px)";
        Indicator.style.transform = "translateX(100px)";
      }
      function register() {
        RegForm.style.transform = "translateX(300px)";
        LoginForm.style.transform = "translateX(300px)";
        Indicator.style.transform = "translateX(0px)";
      }
    </script>
  </body>
</html>
