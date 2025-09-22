<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="agrimech_mart.index.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background: #fcfbfb; /* Black background */
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .signup-box {
      background: #fff;
      padding: 40px;
      border-radius: 10px;
      width: 380px;
      text-align: center;
      box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
    }

    .signup-box .icon {
      background: green;
      color: white;
      font-size: 30px;
      width: 60px;
      height: 60px;
      line-height: 60px;
      border-radius: 50%;
      margin: 0 auto 15px;
    }

    .signup-box h2 {
      margin: 10px 0;
      font-size: 22px;
    }

    .signup-box p {
      color: #555;
      margin-bottom: 20px;
      font-size: 14px;
    }

    .signup-box input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 1px solid #ddd;
      border-radius: 6px;
      font-size: 14px;
    }

    .signup-box input:focus {
      border-color: green;
      outline: none;
    }

    .signup-box button {
      width: 100%;
      padding: 12px;
      border: none;
      background: green;
      color: white;
      font-size: 16px;
      border-radius: 6px;
      cursor: pointer;
    }

    .signup-box button:hover {
      background: darkgreen;
    }

    .signup-box .signin {
      margin-top: 15px;
      font-size: 14px;
    }

    .signup-box .signin a {
      color: green;
      text-decoration: none;
      font-weight: bold;
    }

    .demo {
      margin-top: 20px;
      font-size: 13px;
      background: #f9f9f9;
      padding: 10px;
      border-radius: 6px;
      border: 1px solid #ddd;
      color: #333;
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
            <body>
<div class="signup-box">
<div class="icon">👤</div>
<h2>Create Account</h2>
<p>Join our farming community</p>
<form>
<input placeholder="Full Name" required="" type="text"/>
<input placeholder="Email Address" required="" type="email"/>
<input placeholder="Password" required="" type="password"/>
<input placeholder="Confirm Password" required="" type="password"/>
<button type="submit">Create Account</button>
</form>
<div class="signin">
      Already have an account? <a href="http://localhost:50446/index/home.aspx">Sign in here</a>
</div>
<div class="demo">
<p><strong>Password must be at least 8 characters long and include 1 uppercase letter, 
        1 lowercase letter, 1 digit, and 1 special character</strong><br/> </p>
</div>
</div>

        </div>
    </form>
</body>
</html>
