<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f5f5f5;
	color: #333;
	margin: 0;
	padding: 0;
}

header {
	background-color: #333;
	color: #fff;
	padding: 15px;
	text-align: center;
	position: relative;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

header h1 {
	margin: 0;
	font-size: 1.8em;
}

header a {
	color: #fff;
	text-decoration: none;
	position: absolute;
	right: 15px;
	top: 50%;
	transform: translateY(-50%);
	font-size: 1.2em;
	font-weight: lighter;
	transition: color 0.3s ease-in-out;
}

header a:hover {
	color: #ddd;
}

h2 {
	text-align: center;
	color: #4caf50;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin: 20px 0;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th, td {
	border: 1px solid #ddd;
	padding: 15px;
	text-align: left;
}

th {
	background-color: #4caf50;
	color: white;
}

tbody tr:hover {
	background-color: #f5f5f5;
}

#total {
	font-size: 18px;
	margin-bottom: 20px;
	text-align: left;
}

#totalAmount {
	color: #4caf50;
}

.container {
	margin: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

#buyButton, #browseButton {
	padding: 15px;
	font-size: 16px;
	background-color: #4caf50;
	color: white;
	border: none;
	cursor: pointer;
	margin: 5px;
	flex: 1;
}

#buyButton:hover, #browseButton:hover {
	background-color: #45a049;
}

/* Styles for the delete button */
.deleteButton {
	background-color: #ff4d4d;
	color: white;
	border: none;
	padding: 8px 12px;
	cursor: pointer;
}

.deleteButton:hover {
	background-color: #e60000;
}
</style>
</head>
<body>
	<header>
		<h1>THREADSFASHION</h1>
		<a href="#">Cart</a>
	</header>

	<div class="container">
		<h2>Your Shopping Cart</h2>

		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Category</th>
					<th>Price (INR)</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="totalAmount" value="0" />

				<c:forEach var="product" items="${productsList}">
					<tr>
						<td><strong>${product.getName()}</strong></td>
						<td>${product.getCategory()}</td>
						<td>${product.getPrice()}</td>
						<td><form action="/CRUD-v2/products/cart/remove"
								method="post">
								<input type="hidden" name="productId" value="${product.id}">
								<button class="deleteButton" type="submit">Remove from
									Cart</button>
							</form></td>
					</tr>

					<!-- Calculate the total amount -->
					<c:set var="totalAmount"
						value="${totalAmount + product.getPrice()}" />
				</c:forEach>
			</tbody>
		</table>

		<div id="total">
			<strong>Total Amount: <span id="totalAmount">${totalAmount}</span>
				INR
			</strong>
		</div>

		<button id="buyButton">Buy</button>
		<button href="product-listing.html" id="browseButton"
			style="margin-top: 10px;">Browse Products</button>
	</div>

</body>
</html>
