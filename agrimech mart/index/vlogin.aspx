<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vlogin.aspx.cs" Inherits="agrimech_mart.index.vlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap 5 CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    body {
      background-color: #fbf9f9;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: Arial, sans-serif;
    }

    .login-box {
      background: #fff;
      padding: 2.5rem 2rem;
      border-radius: 10px;
      width: 100%;
      max-width: 400px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
      text-align: center;
    }

    .login-icon {
      background-color: green;
      color: white;
      font-size: 2rem;
      width: 60px;
      height: 60px;
      line-height: 60px;
      border-radius: 50%;
      margin: 0 auto 1rem auto;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .login-box h2 {
      margin-bottom: 0.5rem;
      font-weight: 600;
    }

    .login-box p {
      color: #555;
      margin-bottom: 1.5rem;
      font-size: 0.9rem;
    }

    .form-control:focus {
      border-color: green;
      box-shadow: 0 0 0 0.25rem rgba(0, 128, 0, 0.25);
    }

    .btn-green {
      background-color: green;
      border-color: green;
      font-weight: 600;
    }

    .btn-green:hover,
    .btn-green:focus {
      background-color: darkgreen;
      border-color: darkgreen;
    }

    .signup-text {
      margin-top: 1rem;
      font-size: 0.9rem;
    }

    .signup-text a {
      color: green;
      font-weight: 600;
      text-decoration: none;
    }

    .signup-text a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="login-box">
    <div class="login-icon">🏪</div>
    <h2>Vendor Login</h2>
    <p>Sign in to your vendor account</p>
    <form>
      <div class="mb-3 text-start">
        <label for="vendorId" class="form-label">Vendor ID</label>
        <input type="text" class="form-control" id="vendorId" placeholder="Enter Vendor ID" required />
      </div>
      <div class="mb-3 text-start">
        <label for="email" class="form-label">Email Address</label>
        <input type="email" class="form-control" id="email" placeholder="Enter Email" required />
      </div>
      <div class="mb-3 text-start">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" placeholder="Enter Password" required />
      </div>
      <button type="submit" class="btn btn-green w-100">Sign In</button>
    </form>
    <div class="signup-text">
      Don’t have a vendor account? 
      <a href="http://127.0.0.1:5500/signup_ps.html" target="_blank">Register as a Vendor</a>
    </div>
  </div>

  <!-- Bootstrap 5 JS Bundle (optional for some components) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        </div>
    </form>
</body>
</html>
