<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vendor.aspx.cs" Inherits="agrimech_mart.index.vendor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Segoe UI", Tahoma, sans-serif;
    }

    body {
      background: #f8fafc;
      color: #333;
    }

    /* Navbar */
    .navbar {
      background: #fff;
      padding: 12px 30px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      border-bottom: 1px solid #e5e7eb;
    }

    .navbar .logo {
      display: flex;
      align-items: center;
      font-weight: bold;
      font-size: 18px;
      gap: 8px;
    }

    .navbar .logo span {
      background: #065f46;
      color: #fff;
      padding: 5px 10px;
      border-radius: 5px;
    }

    .navbar input {
      width: 350px;
      padding: 7px 12px;
      border-radius: 5px;
      border: 1px solid #d1d5db;
    }

    .navbar .links a {
      margin-left: 20px;
      text-decoration: none;
      color: #374151;
      font-size: 15px;
    }

    .navbar .links a.active {
      color: #065f46;
      font-weight: bold;
    }

    /* Dashboard Header */
    .dashboard {
      padding: 30px;
    }

    .dashboard h2 {
      margin-bottom: 10px;
    }

    .cards {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
      margin-top: 20px;
    }

    .card {
      background: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.08);
    }

    .card h3 {
      font-size: 22px;
      margin-bottom: 5px;
    }

    .card p {
      font-size: 14px;
      color: #6b7280;
    }

    /* Tabs */
    .tabs {
      display: flex;
      margin-top: 30px;
      border-bottom: 1px solid #e5e7eb;
    }

    .tabs button {
      flex: 1;
      padding: 12px;
      background: none;
      border: none;
      cursor: pointer;
      font-size: 16px;
      border-bottom: 3px solid transparent;
    }

    .tabs button.active {
      color: #065f46;
      border-bottom: 3px solid #065f46;
      font-weight: bold;
    }

    /* Product Management */
    .product-management {
      margin-top: 25px;
      background: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.05);
    }

    .product-management h3 {
      margin-bottom: 15px;
    }

    .top-actions {
      display: flex;
      justify-content: space-between;
      margin-bottom: 15px;
    }

    .top-actions input {
      padding: 8px 12px;
      border: 1px solid #d1d5db;
      border-radius: 5px;
      width: 250px;
    }

    .btn-add {
      background: #065f46;
      color: #fff;
      border: none;
      padding: 10px 15px;
      border-radius: 5px;
      cursor: pointer;
      font-size: 14px;
    }

    .btn-add:hover {
      background: #047857;
    }

    /* Table */
    table {
      width: 100%;
      border-collapse: collapse;
    }

    table th, table td {
      padding: 12px 15px;
      border-bottom: 1px solid #e5e7eb;
      text-align: left;
      font-size: 14px;
    }

    table th {
      background: #f9fafb;
    }

    .stock-in {
      background: #065f46;
      color: #fff;
      padding: 4px 10px;
      border-radius: 15px;
      font-size: 12px;
    }

    .stock-out {
      background: #dc2626;
      color: #fff;
      padding: 4px 10px;
      border-radius: 15px;
      font-size: 12px;
    }

    .actions i {
      margin-right: 10px;
      cursor: pointer;
    }

    .actions .edit {
      color: #374151;
    }

    .actions .delete {
      color: #dc2626;
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
<div class="logo"><a href="http://localhost:50446/index/home.aspx"><img alt="Logo" src="../image/logo.jpg"></a> | AgriMech Mart</div>
<div class="search-bar">
<input placeholder="Search for spare parts, brands, or part numbers..." type="text"/>
</div>
<nav>
<a href="http://localhost:50446/index/product.aspx" target="_blank">Products</a>
<a href="http://localhost:50446/index/vlogin.aspx" target="_blank">Vendor Login</a>

</nav>
</header>
<!-- Dashboard -->
<div class="dashboard">
<h2>Vendor Dashboard</h2>
<p>Manage your products and orders</p>
<!-- Cards -->
<div class="cards">
<div class="card">
<h3>6</h3>
<p>Total Products</p>
</div>
<div class="card">
<h3>127</h3>
<p>Total Orders</p>
</div>
<div class="card">
<h3>$12,450</h3>
<p>Revenue</p>
</div>
<div class="card">
<h3>89</h3>
<p>Customers</p>
</div>
</div>
<!-- Tabs -->
<div class="tabs">
<button class="active">Products</button>
<button>Orders</button>
<button>Profile</button>
</div>
<!-- Product Management -->
<div class="product-management">
<div class="top-actions">
<input placeholder="Search products..." type="text"/>
<button class="btn-add">+ Add Product</button>
</div>
<table>
<thead>
<tr>
<th>Product</th>
<th>Brand</th>
<th>Category</th>
<th>Price</th>
<th>Stock</th>
<th>Actions</th>
</tr>
</thead>
<tbody>
<tr>
<td>Engine Belt Assembly</td>
<td>John Deere</td>
<td>Engine Parts</td>
<td>$125.99</td>
<td><span class="stock-in">In Stock</span></td>
<td class="actions"><i class="edit">✏️</i><i class="delete">🗑️</i></td>
</tr>
<tr>
<td>Hydraulic Filter</td>
<td>Case IH</td>
<td>Hydraulic System</td>
<td>$45.50</td>
<td><span class="stock-in">In Stock</span></td>
<td class="actions"><i class="edit">✏️</i><i class="delete">🗑️</i></td>
</tr>
<tr>
<td>Gear Drive Assembly</td>
<td>New Holland</td>
<td>Transmission</td>
<td>$289.00</td>
<td><span class="stock-out">Out of Stock</span></td>
<td class="actions"><i class="edit">✏️</i><i class="delete">🗑️</i></td>
</tr>
</tbody>
</table>
</div>
</div>

        </div>
    </form>
</body>
</html>
