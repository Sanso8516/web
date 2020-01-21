<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <script src='{% static "js/jquery-1.11.3.min.js" %}'></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script type="text/javascript" src="./login.js?ver=1"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/paper.js/0.11.3/paper-full.min.js"></script>

	<title>로그인</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <link rel="stylesheet" href="./bootstrap.min.css" media="screen">
  <link rel="stylesheet" href="./login.css" media="screen">
</head>

<body>

<!--nav-->

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <b><a class="navbar-brand" href="./index">산소의 커뮤니티</a></b>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="./index">홈 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./forum">자유게시판</a>
      </li>
      <!--<li class="nav-item">
        <a class="nav-link" href="./imagebbs.html">이미지게시판</a>
      </li>-->
      <li class="nav-item">
        <a class="nav-link" href="./login">로그인</a>
      </li>
    </ul>
    <?php
      $_SESSION['username']=$username;
        if(isset($_SESSION['username']))
        { 
          echo "<h1>"$username"</h1>";
        }
        else{
          echo "<script>alert('session error');</script>";
          }
    ?>
  </div>
</nav>



<!-- Login -->
	<div id="back">
  <canvas id="canvas" class="canvas-back"></canvas>
  <div class="backRight">    
  </div>
  <div class="backLeft">
  </div>
</div>
<div id="slideBox">
  <div class="topLayer">
    <div class="left">
      <div class="content">
        <h2>Sign Up</h2>
        <form method="post" action="./login.php">
          <div class="form-element form-stack">
            <label for="email" class="form-label">Email</label>
            <input id="email" type="email" name="email">
          </div>
          <div class="form-element form-stack">
            <label for="username-signup" class="form-label">Username</label>
            <input id="username-signup" type="text" name="username">
          </div>
          <div class="form-element form-stack">
            <label for="password-signup" class="form-label">Password</label>
            <input id="password-signup" type="password" name="password">
          </div>
          <div>
            <button id="logIn" class="login" type="submit" name="login">완료</button>
          </div>
          <!--
          <div class="form-element form-checkbox">
            <input id="confirm-terms" type="checkbox" name="confirm" value="yes" class="checkbox">
            <label for="confirm-terms">I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a></label>
          </div>
        -->
      </form>
        <form id="form-signup" method="post" onsubmit="return false;">
          <div class="form-element form-submit">
            <button id="signUp" class="signup" type="submit" name="signup">회원가입</button>
            <button id="goLeft" class="signup off">로그인</button> 
          </div>
        </form>
      </div>
    </div>
    <div class="right">
      <div class="content">
        <h2>Login</h2>
        <form method="post" action="./login.php">
          <div class="form-element form-stack">
            <label for="username-login" class="form-label">Username</label>
            <input id="username-login" type="text" name="username">
          </div>
          <div class="form-element form-stack">
            <label for="password-login" class="form-label">Password</label>
            <input id="password-login" type="password" name="password">
          </div>
          <div>
            <button id="signUp" class="signup" type="submit" name="signup">완료</button>
          </div>
        </form>
        <form id="form-login" method="post" action="./login.php" onsubmit="return false;">
          <div class="form-element form-submit">
            <button id="logIn" class="login" type="submit" name="login">로그인</button>
            <button id="goRight" class="login off" name="signup">회원가입</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

</body>
</html>