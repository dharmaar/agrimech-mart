<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="agrimech_mart.index.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
<style>
.hero button {
  background: #050505;
  color: #f9f7f7;
  padding: 12px 20px;
  border: 2px;
  border-radius: 6px;
  font-weight: bold;
  cursor: pointer;
}

/* General responsive images */
img {
  max-width: 100%;
  height: auto;
}

.container {
  width: 90%;
  margin: 0 auto;
}

/* Header */
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
  flex-wrap: wrap; /* allows stacking on mobile */
}

/* Logo */
.logo {
  display: flex;
  align-items: center;
  font-weight: bold;
  font-size: 20px;
  color: #006400;
}
.logo img {
  max-width: 90px; /* desktop default */
  height: auto;
  margin-right: 10px;
}

/* Search bar */
.search-bar input {
  padding: 8px;
  width: 300px;
  border: 1px solid #ddd;
  border-radius: 20px;
}

/* Navbar links */
nav a {
  margin: 0 15px;
  text-decoration: none;
  color: #080808;
  font-weight: 500;
}
nav a:hover {
  color: #006400;
}

/* Cart grid */
#cart-list {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 15px;
}
/* Cart items */
.cart-item {
 padding: 15px;
  border: 1px solid #ddd;
  border-radius: 10px;
  background: #fff;
  text-align: center;
  box-shadow: 0 2px 6px rgba(0,0,0,0.05);
}
.cart-image {
  width: 80px;
  height: auto;
  margin-right: 15px;
  border-radius: 8px;
}
.cart-details p {
  margin: 0;
  font-size: 14px;
}

/* 📱 Responsive styles */
@media (max-width: 768px) {
  body {
    font-size: 14px;
  }
  header {
    flex-direction: column;
    text-align: center;
    padding: 10px 20px;
  }
  .logo img {
    max-width: 120px;
  }
  .search-bar input {
    width: 100%;
    margin-top: 10px;
  }
  nav {
    margin-top: 10px;
  }
  nav a {
    display: inline-block;
    margin: 5px 10px;
  }
  .cart-item {
    flex-direction: column;
    text-align: center;
  }
  .cart-image {
    margin-bottom: 10px;
  }
}

@media (max-width: 480px) {
  body {
    font-size: 12px;
  }
  h1, h2, h3 {
    font-size: 1.2em;
  }
  .logo img {
    max-width: 90px;
  }
  .search-bar input {
    font-size: 12px;
    padding: 6px;
  }
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
<a href="http://localhost:50446/index/vlogin.aspx" target="_blank">Vendor Portal</a>
<a href="http://localhost:50446/index/cart.aspx">Cart</a>
<a href="http://localhost:50446/index/checkout.aspx">Checkout</a>
<a href="http://localhost:50446/index/login.aspx" target="_blank">Login</a>
 <a href="http://localhost:50446/index/signup.aspx " target="_blank">Sign in</a>
  </nav>
</header>

<div class="container py-5">
  <h2>Your Cart</h2>
  <!-- 🔹 List of cart items goes here -->
  <div id="cart-list"></div>
  <!-- 🔹 Total price -->
  <h4 class="mt-3">Total: <span id="cart-total">₹0</span></h4>
  <!-- 🔹 Checkout button -->
  <button class="btn btn-primary mt-3" onclick="window.open('checkout.html', '_blank')">Place Order</button>
</div>

<!-- JS -->
<script src="script.js"></script>
<script>
    function renderCart() {
        let cart = JSON.parse(localStorage.getItem("cart")) || [];
        let cartList = document.getElementById("cart-list");
        let cartTotal = document.getElementById("cart-total");
        cartList.innerHTML = "";
        let total = 0;

        if (cart.length === 0) {
            cartList.innerHTML = "<p>Your cart is empty.</p>";
        }

        cart.forEach((item, index) => {
            total += item.price * item.qty;
            cartList.innerHTML += `
        <div class="cart-item">
          <img src="${item.image}" alt="${item.name}" class="cart-image">
          <div class="cart-details">
            <p><strong>${item.name}</strong></p>
            <p>₹${item.price}</p>
            <p>
              Qty: 
              <button class="btn btn-sm btn-outline-secondary" onclick="updateQty(${index}, -1)">-</button>
              ${item.qty}
              <button class="btn btn-sm btn-outline-secondary" onclick="updateQty(${index}, 1)">+</button>
            </p>
            <button class="btn btn-sm btn-danger" onclick="removeItem(${index})">Remove</button>
          </div>
        </div>
      `;
        });

        cartTotal.textContent = "₹" + total;
    }

    // 🔹 Update quantity
    function updateQty(index, change) {
        let cart = JSON.parse(localStorage.getItem("cart")) || [];
        if (cart[index]) {
            cart[index].qty += change;
            if (cart[index].qty <= 0) {
                cart.splice(index, 1); // remove if qty 0
            }
            localStorage.setItem("cart", JSON.stringify(cart));
            renderCart();
        }
    }

    // 🔹 Remove item
    function removeItem(index) {
        let cart = JSON.parse(localStorage.getItem("cart")) || [];
        cart.splice(index, 1);
        localStorage.setItem("cart", JSON.stringify(cart));
        renderCart();
    }

    document.addEventListener("DOMContentLoaded", renderCart);
</script>

        </div>
    </form>
</body>
</html>
