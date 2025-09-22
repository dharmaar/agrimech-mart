<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vsignup.aspx.cs" Inherits="agrimech_mart.index.vsignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vendor Register</title>
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

    .register-box {
      background: #fff;
      padding: 2.5rem 2rem;
      border-radius: 10px;
      width: 100%;
      max-width: 450px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
      text-align: center;
    }

    .register-icon {
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

    .register-box h2 {
      margin-bottom: 0.5rem;
      font-weight: 600;
    }

    .register-box p {
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

    .login-text {
      margin-top: 1rem;
      font-size: 0.9rem;
    }

    .login-text a {
      color: green;
      font-weight: 600;
      text-decoration: none;
    }

    .login-text a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="register-box">
    <div class="register-icon">📝</div>
    <h2>Vendor Register</h2>
    <p>Create your vendor account</p>
    <form>
      <div class="mb-3 text-start">
        <label for="vendorId" class="form-label">Vendor ID</label>
        <input type="text" class="form-control" id="vendorId" placeholder="Enter Vendor ID" required />
      </div>
      <div class="mb-3 text-start">
        <label for="vendorName" class="form-label">Vendor Name</label>
        <input type="text" class="form-control" id="vendorName" placeholder="Enter Vendor Name" required />
      </div>
      <div class="mb-3 text-start">
        <label for="email" class="form-label">Email Address</label>
        <input type="email" class="form-control" id="email" placeholder="Enter Email" required />
      </div>
      <div class="mb-3 text-start">
        <label for="phone" class="form-label">Phone Number</label>
        <input type="tel" class="form-control" id="phone" placeholder="Enter Phone Number" required />
      </div>
      <div class="mb-3 text-start">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" placeholder="Enter Password" required />
      </div>
      <div class="mb-3 text-start">
        <label for="confirmPassword" class="form-label">Confirm Password</label>
        <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm Password" required />
      </div>
      <button type="submit" class="btn btn-green w-100">Register</button>
    </form>
    <div class="login-text">
      Already have a vendor account? 
      <a href="http://localhost:50446/index/vlogin.aspx" target="_blank">Sign in here</a>
    </div>
  </div>

  <!-- Bootstrap 5 JS Bundle (optional) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        </div>
    </form>
</body>
</html>
