<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="agrimech_mart.index.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background: #fbf9f9; /* Black background like screenshot */
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-box {
      background: #fff;
      padding: 40px;
      border-radius: 10px;
      width: 350px;
      text-align: center;
      box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
    }

    .login-box .icon {
      background: green;
      color: white;
      font-size: 30px;
      width: 60px;
      height: 60px;
      line-height: 60px;
      border-radius: 50%;
      margin: 0 auto 15px;
    }

    .login-box h2 {
      margin: 10px 0;
      font-size: 22px;
    }

    .login-box p {
      color: #555;
      margin-bottom: 20px;
      font-size: 14px;
    }

    .login-box input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 1px solid #ddd;
      border-radius: 6px;
      font-size: 14px;
    }

    .login-box input:focus {
      border-color: green;
      outline: none;
    }

    .login-box button {
      width: 100%;
      padding: 12px;
      border: none;
      background: green;
      color: white;
      font-size: 16px;
      border-radius: 6px;
      cursor: pointer;
    }

    .login-box button:hover {
      background: darkgreen;
    }

    .login-box .signup {
      margin-top: 15px;
      font-size: 14px;
    }

    .login-box .signup a {
      color: green;
      text-decoration: none;
      font-weight: bold;
    }

    
  
/* Responsive styles */
img {
    max-width: 100%;
    height: auto;
}

.container {
    width: 90%;
    margin: 0 auto;
}

@media (max-width: 768px) {
    body {
        font-size: 14px;
    }
    header, nav, footer {
        flex-direction: column;
        text-align: center;
    }
    .container {
        width: 100%;
    }
    .form-group, input, button {
        width: 100% !important;
    }
}

@media (max-width: 480px) {
    body {
        font-size: 12px;
    }
    h1, h2, h3 {
        font-size: 1.2em;
    }
}
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="login-box">
<div class="icon">👤</div>
<h2>Welcome Back</h2>
<p>Sign in to your account</p>
<form>
<input placeholder="Email Address" required="" type="email"/>
<input placeholder="Password" required="" type="password"/>
<button type="submit">Sign In</a></button>
</form>
<div class="signup">
      Don’t have an account? <a href="http://localhost:50446/index/signup.aspx " target="_blank">Sign up here</a>
</div>

</div>
</div>

         </div>
    </form>
</body>
</html>
