<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ThreadsFashion - Discover Your Style</title>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Ubuntu:wght@400;500;700&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap')
	;

body {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	background-color: #f4f4f4;
}

header {
	background-color: #242915;
	color: #fff;
	text-align: center;
	padding: 20px;
	font-size: large;
}

.main-content {
	display: flex;
	justify-content: space-around;
	align-items: center;
	flex-wrap: wrap;
	padding: 50px;
}

.main-content h2 {
	font-size: 39px;
}

.product-image {
	max-width: 100%;
	height: auto;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.cta-container {
	max-width: 600px;
	text-align: center;
	margin-top: 20px;
}

.cta-container h2 {
	color: #1b1b1b;
}

.cta-container p {
	color: #666;
}

.shop-now-button {
	display: inline-block;
	padding: 15px 30px;
	background-color: #4CAF50;
	color: #fff;
	text-decoration: none;
	font-size: 20px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
	margin-top: 20px;
}

.shop-now-button:hover {
	background-color: #45a049;
}

footer {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 10px;
	position: fixed;
	bottom: 0;
	width: 100%;
}

/* about section styling */
.titleabout {
	position: relative;
	text-align: center;
	font-size: 40px;
	font-weight: 500;
	margin-bottom: 1px;
	padding-bottom: 00px;
	color: #000000;
	font-family: 'Poppins', sans-serif;
}

.about .about-content .left {
	width: 45%;
}

.about .about-content .left img {
	height: 400px;
	width: 400px;
	object-fit: cover;
	border-radius: 6px;
}

.about .about-content .right {
	width: 55%;
}

.about .about-content .right .text {
	font-size: 25px;
	font-weight: 600;
	margin-bottom: 10px;
	color: black;
}

.about .about-content .right .text span {
	color: #76326d;
}

.about .about-content .right p {
	text-align: justify;
	color: #000000;
}

.about .about-content .right a {
	display: inline-block;
	background: #76326d;
	color: #000000;
	font-size: 20px;
	font-weight: 500;
	padding: 10px 30px;
	margin-top: 20px;
	border-radius: 6px;
	border: 2px solid #76326d;
	transition: all 0.3s ease;
}

.about .about-content .right a:hover {
	color: #76326d;
	background: none;
}

.about, .services, .skills, .teams, .contact, footer {
	font-family: 'Poppins', sans-serif;
}

section {
	padding: 100px 0;
}

.max-width {
	max-width: 1300px;
	padding: 0 80px;
	margin: auto;
}

.about, .services, .skills, .teams, .contact, footer {
	font-family: 'Poppins', sans-serif;
}

.about .about-content, .services .serv-content, .skills .skills-content,
	.contact .contact-content {
	display: flex;
	flex-wrap: wrap;
	align-items: center;
	justify-content: space-between;
}

section .title {
	position: relative;
	text-align: center;
	font-size: 40px;
	font-weight: 500;
	margin-bottom: 60px;
	padding-bottom: 20px;
	font-family: 'Ubuntu', sans-serif;
}

section .title::before {
	content: "";
	position: absolute;
	bottom: 0px;
	left: 50%;
	width: 180px;
	height: 3px;
	background: #111;
	transform: translateX(-50%);
}

section .title::after {
	position: absolute;
	bottom: -8px;
	left: 50%;
	font-size: 20px;
	color: #763C32;
	padding: 0 5px;
	background: #fff;
	transform: translateX(-50%);
}

/* study material section styling */
.services, .teams {
	color: #fff;
	background: #111;
}

.title {
	font-size: 25px;
	font-weight: 1000;
}

.services .title::before, .teams .title::before {
	background: #fff;
}

.services .serv-content .card {
	width: calc(33% - 20px);
	background: #222;
	text-align: center;
	border-radius: 6px;
	padding: 50px 25px;
	cursor: pointer;
	transition: all 0.3s ease;
}

.services .serv-content .card:hover {
	background: #763270;
}

.services .serv-content .card .box {
	transition: all 0.3s ease;
}

.services .serv-content .card:hover .box {
	transform: scale(1.05);
}

.services .serv-content .card i {
	font-size: 50px;
	color: #763C32;
	transition: color 0.3s ease;
}

.services .serv-content .card:hover i {
	color: #fff7f7;
}

.services .serv-content .card .text {
	font-size: 25px;
	font-weight: 1000;
	margin: 10px 0 7px 0;
}

/* contact section styling */
.contact {
	background-color: #111;
	color: rgb(255, 255, 255);
}

.contact .contact-content .column {
	width: calc(50% - 30px);
}

.contact .contact-content .text {
	font-size: 20px;
	font-weight: 600;
	margin-bottom: 10px;
}

.contact .contact-content .left p {
	text-align: justify;
}

.contact .contact-content .left .icons {
	margin: 10px 0;
}

.contact .contact-content .row {
	display: flex;
	height: 65px;
	align-items: center;
}

.contact .contact-content .row .info {
	margin-left: 30px;
}

.contact .contact-content .row i {
	font-size: 25px;
	color: #763C32;
}

.contact .contact-content .info .head {
	font-weight: 500;
}

.contact .contact-content .info .sub-title {
	color: #e9e9e9;
}

.contact .right form .fields {
	display: flex;
}

/* footer section styling */
footer {
	background: #111;
	padding: 15px 23px;
	color: #fff;
	text-align: center;
}

footer span a {
	color: #f1f1f1;
	text-decoration: none;
}

footer span a:hover {
	text-decoration: underline;
}

.linkicon a i {
	color: white;
	margin: 10px;
	font-size: 20px;
}

.linkicon a i:hover {
	color: #763C32;
	margin: 10px;
	font-size: 20px;
}

/* be yourself stars here */
.gallery {
	padding: 50px;
	display: flex;
}

.galleryItem {
	flex: 1;
	padding: 50px;
}

.galleryImg {
	width: 100%;
}

/* ns item starts here */
.newSeason {
	display: flex;
}

.nsItem {
	flex: 1;
	background-color: #F0B101;
	color: white;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	text-align: center;
}

.nsImg {
	width: 100%;
	height: 500px;
}

.nsTitle {
	font-size: 40px;
}

.nsButton {
	padding: 15px;
	font-weight: 600;
	cursor: pointer;
}
</style>

</head>
<body>
	<header>
		<h1>ThreadsFashion</h1>
		<p>Discover your unique style with our curated collection.</p>
	</header>

	<section class="main-content">
		<img
			src="https://img.freepik.com/free-vector/application-smartphone-mobile-computer-payments-online-transaction-shopping-online-process-smartphone-vecter-cartoon-illustration-isometric-design_1150-62437.jpg?w=1800&t=st=1700924446~exp=1700925046~hmac=1d0e1903c5b8d35e3f2f6878d2d0b9f77cabf2015f7ea8f0ea16da5f6868a624">
		<div class="cta-container">
			<h2>Exclusive Deals Just for You!</h2>
			<p>Explore our curated collection of high-quality products.</p>
			<a href="login" class="shop-now-button">Shop Now!</a>
		</div>


		<!-- be yourself
     -->
		</div>
		<div class="gallery">
			<div class="galleryItem">
				<h1 class="galleryTitle">Be Yourself!</h1>
				<img
					src="https://img.freepik.com/free-photo/ginger-head-woman-with-colorful-outfit_23-2149441402.jpg?w=740&t=st=1700929809~exp=1700930409~hmac=c8b2bc0a216a2b7dcddddedc4efe2958c081f1ad86d507888a5c1db12155b1e1"
					alt="" class="galleryImg">
			</div>
			<div class="galleryItem">
				<img
					src="https://img.freepik.com/free-photo/portrait-fashionable-boy-posing_23-2148184636.jpg?w=740&t=st=1700929603~exp=1700930203~hmac=5a405bd06efc8bb79c907e4f7475e4cbdfa1ab0e9731787d4530517c38562c96"
					alt="" class="galleryImg">
				<h1 class="galleryTitle">This is the First Day of Your New Life</h1>
			</div>
			<div class="galleryItem">
				<h1 class="galleryTitle">Just Do it!</h1>
				<img
					src="https://img.freepik.com/free-photo/handsome-man-dancing_144627-3575.jpg?w=740&t=st=1700929693~exp=1700930293~hmac=1523c1e67460d5e869c508dafcee969982f46ac74c7dab8a6a98f4362395370e"
					alt="" class="galleryImg">
			</div>
		</div>
		<!-- 

    ns item -->
		</div>
		<div class="newSeason">
			<div class="nsItem">
				<img
					src="https://img.freepik.com/free-photo/boy-filming-with-camcorder-yellow-scene_23-2148184779.jpg?w=826&t=st=1700930653~exp=1700931253~hmac=d4461d9b26e57ddaa4e62c4ff1b37dd903d615ef9f0571a018366adce8704fb7"
					alt="" class="nsImg">
			</div>
			<div class="nsItem">
				<h3 class="nsTitleSm">WINTER NEW ARRIVALS</h3>
				<h1 class="nsTitle">New Season</h1>
				<h1 class="nsTitle">New Collection</h1>
				<a href="#nav">
					<button class="nsButton">CHOOSE YOUR STYLE</button>
				</a>
			</div>
			<div class="nsItem">
				<img
					src="https://images.pexels.com/photos/7856965/pexels-photo-7856965.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
					alt="" class="nsImg">
			</div>
		</div>
	</section>

	<!-- about section start -->
	<section class="about" id="about">
		<div class="max-width">
			<h2 class="titleabout">About Us</h2>
			<div class="about-content">
				<div class="column left">
					<img
						src="https://img.freepik.com/free-photo/young-female-sitting-shopping-cart_651396-210.jpg?w=740&t=st=1700924942~exp=1700925542~hmac=fe07d37403c16735eb98902898782f4985657a1398515f693665ca9dd186fb4a"
						alt="">
				</div>
				<div class="column right">
					<div class="text">
						<span class="typing-2"></span>
					</div>
					<p>Thread Fashions is a one stop shop for all your fashion and
						lifestyle needs. Thread Fashions aims at providing a hassle free
						and enjoyable shopping experience to shoppers across the country
						with the widest range of brands and products on its portal. The
						brand is making a conscious effort to bring the power of fashion
						to shoppers with an array of the latest and trendiest products
						available in the country.</p>

				</div>
			</div>
		</div>

	</section>

	<hr>
	<!-- footer section start -->
	<footer>
		copyright © ThreadsFashion

		</div>
</body>
</html>