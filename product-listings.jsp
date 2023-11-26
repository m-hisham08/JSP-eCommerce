<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ThreadsFashion</title>

<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

a {
	text-decoration: none;
	color: inherit;
}

a:hover {
	color: #555;
}

header {
	background-color: #333;
	color: #fff;
	padding: 15px;
	text-align: center;
	position: relative;
}

header h1 {
	margin: 0;
}

header a {
	color: #fff;
	text-decoration: none;
	position: absolute;
	right: 15px;
	top: 50%;
	transform: translateY(-50%);
	font-size: 18px;
	font-weight: bold;
}

header a:hover {
	color: #ddd;
}

#product-list {
	max-width: 1200px;
	margin: 20px auto;
	display: flex;
	flex-wrap: wrap;
	justify-content: flex-start;
}

.product-card {
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin: 15px;
	padding: 20px;
	width: calc(25% - 30px);
	transition: transform 0.3s ease-in-out;
	box-sizing: border-box;
	border-radius: 10px;
	overflow: hidden;
}

.product-card:hover {
	transform: scale(1.05);
}

.product-card img {
	max-width: 100%;
	height: auto;
	border-radius: 8px;
	margin-bottom: 15px;
}

.product-details h3 {
	font-size: 18px;
	margin-bottom: 10px;
}

.product-details p {
	font-size: 14px;
	margin: 5px 0;
}

.product-details button {
	background-color: #333;
	color: #fff;
	border: none;
	padding: 8px 15px;
	font-size: 14px;
	cursor: pointer;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.product-details button:hover {
	background-color: #555;
}

.filter-bar {
	background-color: #fff;
	padding: 15px;
	margin-bottom: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	align-items: center;
}

.filter-bar label {
	margin-right: 10px;
}

.filter-bar input, .filter-bar select, .filter-bar button {
	margin: 5px;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.filter-bar button {
	background-color: #333;
	color: #fff;
	cursor: pointer;
}

.filter-bar button:hover {
	background-color: #555;
}
</style>
</head>
<body>
	<%
	if (session.getAttribute("email") == null) {
		System.out.println("NO entry biatch");
		response.sendRedirect(request.getContextPath() + "/login");
	}
	System.out.println(session.getAttribute("email"));
	%>

	<header>
		<h1>THREADSFASHION</h1>
		<a href="cart.html">Cart</a>
	</header>

	<form class="filter-bar">
		<div>
			<strong><label for="search">Search:</label></strong> <input
				type="text" id="search" name="search" placeholder="Search products">
		</div>

		<div>
			<strong><label for="category">Category:</label></strong> <select
				id="category" name="category">
				<option value="category1">Category 1</option>
				<option value="category2">Category 2</option>
				<option value="category3">Category 3</option>
			</select>
		</div>

		<div>
			<strong><label for="rating">Rating:</label></strong> <input
				type="checkbox" id="rating1" name="rating[]" value="1"> <label
				for="rating1">1+</label> <input type="checkbox" id="rating2"
				name="rating[]" value="2"> <label for="rating2">2+</label> <input
				type="checkbox" id="rating3" name="rating[]" value="3"> <label
				for="rating3">3+</label>
		</div>

		<div>
			<strong><label for="price-range">Price Range:</label></strong>
			<!-- Price range checkboxes -->
			<input type="checkbox" id="under-2500" name="price-range[]"
				value="2500"> <label for="under-2500">Under ₹2500</label> <input
				type="checkbox" id="under-5000" name="price-range[]" value="5000">
			<label for="under-5000">Under ₹5000</label> <input type="checkbox"
				id="under-10000" name="price-range[]" value="10000"> <label
				for="under-10000">Under ₹10000</label>
		</div>

		<button type="submit">Apply Filters</button>
	</form>

	<div id="product-list">
		<c:forEach var="product" items="${productsList}">
			<a href="products/details?id=${product.getId()}" class="product-card">
				<img src="${product.getImage()}" alt="Product Image">
				<div class="product-details">
					<h3>${product.getName()}</h3>
					<p>Category: ${product.getCategory()}</p>
					<p>Rating: ${product.getRating()}/5</p>
					<p>Price: ₹${product.getPrice()}</p>
					<form action="cart/insert" method="post">
						<input type="hidden" name="productId" value="${product.getId()}">
						<button type="submit" class="add-to-cart-button">Add to
							Cart</button>
					</form>
				</div>
			</a>
		</c:forEach>
	</div>


	<script>
		// You can add JavaScript code here to handle dynamic product loading, filtering, and adding to cart.
	</script>
</body>
</html>