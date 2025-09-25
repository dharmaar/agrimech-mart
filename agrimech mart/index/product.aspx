<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="agrimech_mart.index.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background: #f8f9fa;
    }

    header {
      background: #fff;
      padding: 15px 30px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      border-bottom: 1px solid #ddd;
    }

    header h1 {
      font-size: 20px;
      margin: 0;
      color: #2a7a2a;
    }

    .container {
      display: flex;
      padding: 20px;
    }

    .filters {
      width: 220px;
      background: #fff;
      padding: 15px;
      border-radius: 8px;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
    }

    .filters h3 {
      margin-top: 0;
      font-size: 18px;
      color: #333;
    }

    .filters label {
      display: block;
      margin: 5px 0;
      font-size: 14px;
      cursor: pointer;
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
     .hero button {
      background: #050505;
      color: #f9f7f7;
      padding: 12px 20px;
      border: 2px;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
     
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
/* nav */
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
<div class="logo"><a href="http://localhost:50446/index/home.aspx">
    <img alt="Logo" src="../image/logo.jpg"></a> | AgriMech Mart</div>
<div class="search-bar">
<input placeholder="Search for spare parts, brands, or part numbers..." type="text"/>
</div>
<nav>
<a href="http://localhost:50446/index/product.aspx" target="_blank">Products</a>
<a href="http://localhost:50446/index/vlogin.aspx" target="_blank">Vendor Login</a>
<a href="http://localhost:50446/index/cart.aspx">Cart</a>
<a href="http://localhost:50446/index/checkout.aspx">Checkout</a>
<a href="http://localhost:50446/index/login.aspx" target="_blank">Login</a>
 <a href="http://localhost:50446/index/signin.aspx " target="_blank">Sign in</a>
</nav>
</header>
<div class="container">
<!-- Filters Section -->
<div class="filters">
<h3>Filters</h3>
<h4>Brand</h4>
<label><input class="brand" type="checkbox" value="John Deere"/> John Deere</label>
<label><input class="brand" type="checkbox" value="Case IH"/> Case IH</label>
<label><input class="brand" type="checkbox" value="New Holland"/> New Holland</label>
<label><input class="brand" type="checkbox" value="Massey Ferguson"/> Massey Ferguson</label>
<h4>Category</h4>
<label><input class="category" type="checkbox" value="Engine Parts"/> Engine Parts</label>
<label><input class="category" type="checkbox" value="Hydraulic System"/> Hydraulic System</label>
<label><input class="category" type="checkbox" value="Transmission"/> Transmission</label>
<label><input class="category" type="checkbox" value="Thresher"/> Thresher</label>
</div>
<!-- Products Section -->
<div class="products row" id="product-list">
<!-- Product 1 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="Air Filter Element">
  <div class="card h-100">
    <img alt="Air Filter" class="card-img-top" 
         src="https://mobileimages.lowes.com/productimages/fef26337-61d1-4dff-82f5-d5d662bd97ed/64858699.jpg?size=pdhism.jpg" />
    <div class="card-body">
      <h4 class="card-title">Air Filter Element</h4>
      <p>Massey Ferguson - Round</p>
      <p class="fw-bold">₹ 500</p>
      <asp:Button ID="btnAirFilter" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p1|Air Filter Element|500|https://mobileimages.lowes.com/productimages/fef26337-61d1-4dff-82f5-d5d662bd97ed/64858699.jpg?size=pdhism.jpg"
        OnCommand="AddToCart_Command" OnClick="btnAirFilter_Click" />
    </div>
  </div>
</div>

<!-- Product 2 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="Harvester spikes">
  <div class="card h-100">
    <img src="../image/Harvester_spikes.jpg" alt="Harvester spikes" class="card-img-top">
    <div class="card-body">
      <h4 class="card-title">Harvester spikes</h4>
      <p>John Deere - Standard</p>
      <p class="fw-bold">₹ 45</p>
      <asp:Button ID="btnHarvesterSpikes" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p2|Harvester spikes|45|../image/Harvester_spikes.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

<!-- Product 3 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="6 leaf auger">
  <div class="card h-100">
    <img alt="6 leaf auger" class="card-img-top" src="../image/6%20leaf%20auger.jpg" />
    <div class="card-body">
      <h4 class="card-title">6 leaf auger</h4>
      <p>John Deere - 48 inch</p>
      <p class="fw-bold">₹ 2500</p>
      <asp:Button ID="btnAuger" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p3|6 leaf auger|2500|../image/6%20leaf%20auger.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

<!-- Product 4 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="115-c belt">
  <div class="card h-100">
    <img alt="115-c belt" class="card-img-top" src="../image/115-c%20belt.jpg" />
    <div class="card-body">
      <h4 class="card-title">115-c belt</h4>
      <p>Case IH - Heavy Duty</p>
      <p class="fw-bold">₹ 250</p>
      <asp:Button ID="btnBelt" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p4|115-c belt|250|../image/115-c%20belt.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

<!-- Product 5 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="blade assembly set">
  <div class="card h-100">
    <img alt="blade assembly set" class="card-img-top" src="../image/blade%20assembly%20set.jpg" />
    <div class="card-body">
      <h4 class="card-title">blade assembly set</h4>
      <p>New Holland - Durable</p>
      <p class="fw-bold">₹ 1500</p>
      <asp:Button ID="btnBladeSet" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p5|blade assembly set|1500|../image/blade%20assembly%20set.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

<!-- Product 6 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="cutterbar reel">
  <div class="card h-100">
    <img alt="cutterbar reel" class="card-img-top" src="../image/cutterbar%20reel.jpg" />
    <div class="card-body">
      <h4 class="card-title">cutterbar reel</h4>
      <p>New Holland - Durable</p>
      <p class="fw-bold">₹ 5000</p>
      <asp:Button ID="btnCutterReel" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p6|cutterbar reel|5000|../image/cutterbar%20reel.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

<!-- Product 7 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="cutterpad blade">
  <div class="card h-100">
    <img alt="cutterpad blade" class="card-img-top" src="../image/cutterpad%20%20blade.jpg" />
    <div class="card-body">
      <h4 class="card-title">cutterpad blade</h4>
      <p>Sharp</p>
      <p class="fw-bold">₹ 750</p>
      <asp:Button ID="btnCutterBlade" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p7|cutterpad blade|750|../image/cutterpad%20%20blade.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

<!-- Product 8 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="cutterpad knife clip">
  <div class="card h-100">
    <img alt="cutterpad knife clip" class="card-img-top" src="../image/cutterpad%20knife%20clip.jpg" />
    <div class="card-body">
      <h4 class="card-title">cutterpad knife clip</h4>
      <p>New Holland - Durable</p>
      <p class="fw-bold">₹ 75</p>
      <asp:Button ID="btnKnifeClip" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p8|cutterpad knife clip|75|../image/cutterpad%20knife%20clip.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

<!-- Product 9 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="Reel tine">
  <div class="card h-100">
    <img alt="Reel tine" class="card-img-top" src="../image/reel%20tine.jpg" />
    <div class="card-body">
      <h4 class="card-title">Harvester spikes / Reel tine</h4>
      <p>New Holland - Durable</p>
      <p class="fw-bold">₹ 25</p>
      <asp:Button ID="btnReelTine" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p9|Reel tine|25|../image/reel%20tine.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

<!-- Product 10 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="Fuel Filter">
  <div class="card h-100">
    <img alt="Fuel Filter" class="card-img-top" src="../image/John%20Deere%20primary%20and%20secondary%20Fuel Filter.jpg" />
    <div class="card-body">
      <h4 class="card-title">Primary and Secondary Fuel Filter</h4>
      <p>John Deere</p>
      <p class="fw-bold">₹ 1000</p>
      <asp:Button ID="btnFuelFilter" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p10|Fuel Filter|1000|../image/John%20Deere%20primary%20and%20secondary%20Fuel Filter.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

<!-- Product 11 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="Platform Auger">
  <div class="card h-100">
    <img alt="Platform Auger" class="card-img-top" src="../image/platform%20auger.jpg" />
    <div class="card-body">
      <h4 class="card-title">Platform Auger</h4>
      <p>New Holland - Durable</p>
      <p class="fw-bold">₹ 8000</p>
      <asp:Button ID="btnPlatformAuger" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p11|Platform Auger|8000|../image/platform%20auger.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

<!-- Product 12 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="UCP P205 Bearing">
  <div class="card h-100">
    <img alt="UCP P205 Bearing" class="card-img-top" src="../image/ucp%20p205%20bearing.jpg" />
    <div class="card-body">
      <h4 class="card-title">UCP P205 Bearing</h4>
      <p>ARB</p>
      <p class="fw-bold">₹ 2500</p>
      <asp:Button ID="btnBearing" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p12|UCP P205 Bearing|2500|../image/ucp%20p205%20bearing.jpg"
        OnCommand="AddToCart_Command" OnClick="btnBearing_Click" />
    </div>
  </div>
</div>

<!-- Product 13 -->
<div class="col-md-4 mb-4 product-card product-item" data-name="Unloading Auger">
  <div class="card h-100">
    <img alt="Unloading Auger" class="card-img-top" src="../image/Unloading%20Auger.jpg" />
    <div class="card-body">
      <h4 class="card-title">Unloading Auger</h4>
      <p>ARB</p>
      <p class="fw-bold">₹ 5000</p>
      <asp:Button ID="btnUnloadingAuger" runat="server" CssClass="btn btn-success"
        Text="Add to Cart"
        CommandArgument="p13|Unloading Auger|5000|../image/Unloading%20Auger.jpg"
        OnCommand="AddToCart_Command" />
    </div>
  </div>
</div>

</div>

</div>
        </div>
    </form>
</body>
</html>
