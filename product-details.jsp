<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f5f5f5;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px 15px;
            text-align: center;
            position: relative;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 25px;
        }

        nav h1 {
            margin: 0;
            font-size: 1.8em;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
            font-weight: lighter;
            transition: color 0.3s ease-in-out;
        }

        nav a:hover {
            color: #ddd;
        }

        .product-container {
            max-width: 1000px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .product-image {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            margin: 0 auto 20px;
            display: block;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .product-details {
            text-align: center;
        }

        .product-name {
            font-size: 1.8em;
            margin-bottom: 10px;
            color: #333;
        }

        .product-category {
            color: #666;
            margin-bottom: 10px;
            font-size: 1em;
        }

        .product-ratings {
            margin-bottom: 10px;
            font-size: 1.2em;
            color: #f39c12;
        }

        .product-price {
            font-size: 1.4em;
            color: #27ae60;
            margin-bottom: 20px;
        }

        .product-description {
            text-align: center;
            margin-top: 20px;
            font-size: 1.2em;
            color: #555;
        }

        .button-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .add-to-cart-button,
        .buy-button {
            padding: 12px;
            font-size: 1.2em;
            cursor: pointer;
            border: none;
            border-radius: 6px;
            color: #fff;
            transition: background-color 0.3s ease-in-out;
        }

        .add-to-cart-button {
            background-color: #3498db;
        }

        .buy-button {
            background-color: #e74c3c;
        }

        .add-to-cart-button:hover,
        .buy-button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <a href="product-listing.html" class="browse-products">Browse Products</a>
            <h1>THREADSFASHION</h1>
            <a href="#">Cart</a>
        </nav>
    </header>

    <div class="product-container">
        <!-- Product Image -->
        <img class="product-image" src="${product.getImage()}" alt="Product Image">

        <!-- Product Details -->
        <div class="product-details">
            <!-- Product Name -->
            <h2 class="product-name">${product.getName()}</h2>

            <!-- Category -->
            <div class="product-category">Category: ${product.getCategory()}</div>

            <!-- Ratings -->
            <div class="product-ratings">Ratings: ${product.getRating()}/5</div>

            <!-- Price -->
            <div class="product-price">₹${product.getPrice()}</div>

            <!-- Product Description -->
            <div class="product-description">
                <p>${product.getDescription()}</p>
            </div>

            <!-- Buttons -->
            <div class="button-container">
                <button class="add-to-cart-button">Add to Cart</button>
                <button class="buy-button">Buy Now</button>
            </div>
        </div>
    </div>
</body>
</html>
