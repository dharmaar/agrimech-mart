<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderplaced.aspx.cs" Inherits="agrimech_mart.index.orderplaced" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
<style>
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

 nav a {
      margin: 0 15px;
      text-decoration: none;
      color: #080808;
      font-weight: 500;
    }

    nav a:hover {
      color: #006400;
    }
     .logo {
      font-weight: bold;
      font-size: 20px;
      color: #006400;
    }
    .search-bar input {
      padding: 8px;
      width: 300px;
      border: 1px solid #ddd;
      border-radius: 20px;
    }
     header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px 40px;
      background: #fff;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
      position: sticky;
      top: 0;
      z-index: 1000;
    }

.logo img {
    max-width: 90px;
     }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <header>
<div class="logo"><a href="http://127.0.0.1:5500/home_ps.html"><img alt="Logo" src="logo.jpg"></a> | AgriMech Mart</div>
<div class="search-bar">
<input placeholder="Search for spare parts, brands, or part numbers..." type="text"/>
</div>
<nav>
<a href="http://127.0.0.1:5500/product_ps.html" target="_blank">Products</a>
<a href="http://127.0.0.1:5500/vendor_ps.html#" target="_blank">Vendor Portal</a>
<a href="http://127.0.0.1:5500/cart.html">Cart</a>
<a href="http://127.0.0.1:5500/checkout.html">Checkout</a>
<a href="http://127.0.0.1:5500/login_ps.html" target="_blank">Login</a>
</nav>
</header>
 
</div>
</div>
</nav>
<div class="container mt-4">
<div class="text-center py-5">
<h2>✅ Order Placed Successfully!</h2>
<p>Thank you for your purchase. Your order will be delivered soon.</p>
<a class="btn btn-success" href="home_ps.html">Back to Home</a>
</div>
</div>
<footer class="bg-dark text-light text-center py-3 mt-5">
<p class="mb-0">© 2025 PSP Harvester Parts. All rights reserved.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="script.js"></script>

        </div>
    </form>
</body>
</html>
