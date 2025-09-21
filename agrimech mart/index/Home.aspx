<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="agrimech_mart.index.Home" %>

<!DOCTYPE aspx>

<aspx xmlns="http://www.w3.org/1999/xaspx">
<head runat="server">
    <title></title>
    <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: #fff;
      color: #222;
    }

    /* Navbar */
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

    .logo {
       display: flex;
  align-items: center;
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

    nav a {
      margin: 0 15px;
      text-decoration: none;
      color: #080808;
      font-weight: 500;
    }

    nav a:hover {
      color: #006400;
    }

    /* Hero Section */
    .hero {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 50px;
      background: linear-gradient(to right, #598e59, #228B22);
      color: #fff;
    }

    .hero-text {
      max-width: 50%;
    }

    .hero-text h1 {
      font-size: 36px;
      margin-bottom: 20px;
    }

    .hero-text p {
      font-size: 16px;
      margin-bottom: 25px;
    }

    .hero button {
      background: #FFD700;
      color: #000;
      padding: 12px 20px;
      border: none;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
    }

    .hero img {
      max-width: 500px;
      border-radius: 10px;
    }

    /* Features */
    .features {
      display: flex;
      justify-content: space-around;
      padding: 40px;
      text-align: center;
    }

    .feature {
      max-width: 250px;
    }

    .feature h3 {
      margin-top: 10px;
      font-size: 18px;
      color: #006400;
    }

    .feature p {
      font-size: 14px;
      color: #555;
    }

    /* Products */
    .products {
      padding: 40px;
    }

    .products h2 {
      font-size: 28px;
      margin-bottom: 10px;
    }

    .product-list {
      display: flex;
      gap: 20px;
    }

    .product {
      border: 1px solid #ddd;
      border-radius: 8px;
      padding: 10px;
      width: 220px;
      text-align: center;
      background: #fff;
      box-shadow: 0 2px 6px rgba(0,0,0,0.05);
    }

    .product img {
      width: 100%;
      height: 150px;
      object-fit: cover;
      border-radius: 6px;
    }

    .product h4 {
      margin: 10px 0 5px;
    }

    .product p {
      font-size: 13px;
      color: #666;
    }

    .product .price {
      font-weight: bold;
      font-size: 16px;
      margin: 10px 0;
      color: #006400;
    }

    .product button {
      width: 100%;
      padding: 8px;
      border: none;
      border-radius: 5px;
      background: #006400;
      color: #fff;
      cursor: pointer;
    }

    .product button:disabled {
      background: #aaa;
      cursor: not-allowed;
    }

    /* Vendors */
    .vendors {
      padding: 40px;
      text-align: center;
      background: #f9f9f9;
    }

    .vendor-list {
      display: flex;
      justify-content: center;
      gap: 20px;
      margin-top: 20px;
    }

    .vendor {
      background: #fff;
      border: 1px solid #ddd;
      padding: 20px;
      border-radius: 8px;
      width: 200px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.05);
    }

    .vendor h4 {
      margin: 10px 0;
    }

    /* Support */
    .support {
      padding: 40px;
      text-align: center;
      background: #006400;
      color: #fff;
    }

    .support button {
      margin-top: 20px;
      background: #FFD700;
      padding: 12px 20px;
      border: none;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
    }

    /* Footer */
    footer {
      text-align: center;
      padding: 20px;
      background: #222;
      color: #fff;
      font-size: 14px;
    }
     .products {
      flex: 1;
      margin-left: 20px;
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 20px;
    }

    .product-card {
      background: #fff;
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
      text-align: center;
      padding-bottom: 15px;
    }

    .product-card img {
      width: 100%;
      height: 180px;
      object-fit: cover;
    }

    .product-card h4 {
      margin: 10px 0 5px;
      font-size: 16px;
      color: #333;
    }

    .product-card p {
      margin: 3px 0;
      font-size: 14px;
      color: #555;
    }

    .product-card .price {
      color: #2a7a2a;
      font-weight: bold;
      font-size: 16px;
    }

    .product-card button {
      margin-top: 8px;
      padding: 8px 15px;
      background: #2a7a2a;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .product-card button:hover {
      background: #256b25;
    }
    .support-form {
      max-width: 100%;
      margin: auto;
      background: white;
      padding: 25px;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }
    .support-form h2 {
      margin-bottom: 20px;
      text-align: center;
      color: #333;
    }
    .support-form label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }
    .support-form input,
    .support-form textarea {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 14px;
    }
    .support-form button {
      width: 100%;
      padding: 12px;
      background: green;
      border: none;
      color: white;
      font-size: 16px;
      border-radius: 6px;
      cursor: pointer;
      transition: 0.3s;
    }
    .support-form button:hover {
      background: darkgreen;
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
.logo img {
    max-width: 90px; /* desktop default */
  height: auto;
  margin-right: 10px;
     }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <header>
<div class="logo"><a href="http://localhost:50446/index/home_ps.aspx"><img alt="Logo" src="../image/logo.jpg"></a> | AgriMech Mart</div>
<div class="search-bar">
<input placeholder="Search for spare parts, brands, or part numbers..." type="text"/>
</div>
<nav>
<a href="http://localhost:50446/index/product.aspx" target="_blank">Products</a>
<a href="http://localhost:50446/index/vendor_ps.aspx" target="_blank">Vendor Portal</a>
<a href="http://localhost:50446/index/cart.aspx">Cart</a>
<a href="http://localhost:50446/index/checkout.aspx">Checkout</a>
<a href="http://localhost:50446/index/login_ps.aspx" target="_blank">Login</a>
 <a href="http://localhost:50446/index/signup_ps.aspx " target="_blank">Sign in</a>
</nav>
</header>
<!-- Hero Section -->
<section class="hero">
<div class="hero-text">
<h1>Premium Paddy Harvester Spare Parts</h1>
<p>Keep your harvest running smoothly with genuine OEM parts and expert support. Fast delivery, competitive prices, and unmatched quality.</p>
<asp:Button ID="btnRedirect" runat="server" Text="Shop Parts Now →"  />

    
</div>
<img alt="Harvester" src="https://images.unsplash.com/photo-1689150396762-65ed008390cf?w=600&amp;h=400&amp;fit=crop.jpg"/>
</section>
<!-- Features -->
<section class="features">
<div class="feature">
<h3>Genuine OEM Parts</h3>
<p>Authentic spare parts that meet or exceed manufacturer specifications</p>
</div>
<div class="feature">
<h3>Fast Delivery</h3>
<p>Quick shipping nationwide to minimize your equipment downtime</p>
</div>
<div class="feature">
<h3>Expert Support</h3>
<p>Technical assistance from experienced agricultural equipment specialists</p>
</div>
</section>
<!-- Products Section -->
<div class="products row" id="product-list">
<!-- Product 1 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="Air Filter Element">
<div class="card h-100">
<img alt="Air Filter" class="card-img-top" src="https://mobileimages.lowes.com/productimages/fef26337-61d1-4dff-82f5-d5d662bd97ed/64858699.jpg?size=pdhism.jpg"/>
<div class="card-body">
<h4 class="card-title">Air Filter Element</h4>
<p>Massey Ferguson - Round</p>
<p class="fw-bold">₹ 500</p>
<button class="btn btn-success" onclick="addToCart('p1','Air Filter Element',500)">
          Add to Cart
        </button>
</div>
</div>
</div>
<!-- Product 2 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="Harvester spikes">
<div class="card h-100">
<img alt="Harvester spikes" class="card-img-top" src="../image/Harvester_spikes.jpg"/>
<div class="card-body">
<h4 class="card-title">Harvester spikes</h4>
<p>John Deere - Standard</p>
<p class="fw-bold">₹ 45</p>
<button class="btn btn-success" onclick="addToCart('p2','Harvester spikes',45)">
          Add to Cart
        </button>
</div>
</div>
</div>
<!-- Product 3 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="6 leaf auger">
<div class="card h-100">
<img alt="6 leaf auger" class="card-img-top" src="../image/6%20leaf%20auger.jpg"/>
<div class="card-body">
<h4 class="card-title">6 leaf auger</h4>
<p>John Deere - 48 inch</p>
<p class="fw-bold">₹ 2500</p>
<button class="btn btn-success" onclick="addToCart('p3','6 leaf auger',2500)">
          Add to Cart
        </button>
</div>
</div>
</div>
<!-- Product 4 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="115-c belt">
<div class="card h-100">
<img alt="115-c belt" class="card-img-top" src="../image/115-c%20belt.jpg"/>
<div class="card-body">
<h4 class="card-title">115-c belt</h4>
<p>Case IH - Heavy Duty</p>
<p class="fw-bold">₹ 250</p>
<button class="btn btn-success" onclick="addToCart('p4','115-c belt',250)">
          Add to Cart
        </button>
</div>
</div>
</div>
<!-- Product 5 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="blade assembly set">
<div class="card h-100">
<img alt="blade assembly set" class="card-img-top" src="../image/blade%20assembly%20set.jpg"/>
<div class="card-body">
<h4 class="card-title">blade assembly set</h4>
<p>New Holland - Durable</p>
<p class="fw-bold">₹ 1500</p>
<button class="btn btn-success" onclick="addToCart('p5','blade assembly set',1500)">
          Add to Cart
        </button>
</div>
</div>
</div>
</div>
<section class="hero">
<div class="hero-text"><button onclick="window.open('product_ps.aspx', '_blank')">
  explore more →</button></div></section>
<!-- Vendors -->
<section class="vendors">
<h2>Trusted Vendors</h2>
<p>Quality parts from verified agricultural equipment suppliers</p>
<div class="vendor-list">
<div class="vendor">
<h4>AgriTech Solutions</h4>
<p>⭐ 4.8</p>
<p>245 products available</p>
</div>
<div class="vendor">
<h4>HarvestPro Parts</h4>
<p>⭐ 4.6</p>
<p>189 products available</p>
</div>
<div class="vendor">
<h4>FarmMech Direct</h4>
<p>⭐ 4.7</p>
<p>156 products available</p>
</div>
</div>
</section>
<!-- Support -->
<section class="support">
<h2>Need Help Finding the Right Part?</h2>
<p>Our agricultural equipment experts are here to help you find exactly what you need</p>
<div class="support-form">
<h2>Contact Support</h2>
<form action="https://formspree.io/f/mandkbyr" method="POST">
<label for="name">Your Name</label>
<input id="name" name="name" placeholder="name" required="" type="text"/>
<label for="email">Your Email</label>
<input id="email" name="_replyto" placeholder="email" required="" type="email"/>
<label for="subject">Subject</label>
<input id="subject" name="subject" placeholder="subject" required="" type="text"/>
<label for="message">Message</label>
<textarea id="message" name="message" placeholder="message" required="" rows="5"></textarea>
<button type="submit">Send Message</button>
</form>
</div>
</section>
<!-- Footer -->
<footer>
    © 2025 Paddy Harvester Spare Parts. All rights reserved.
  </footer>
<script src="script.js"></script>
        </div>
    </form>
</body>
</aspx>
