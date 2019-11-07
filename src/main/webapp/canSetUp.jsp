<html>
<head>
<jsp:include page="loginHeader.jsp"></jsp:include>
<script>
	function logout() {
		localStorage.clear();
		window.location.href = "?pageName=home.jsp";
	}
</script>
</head>
<body style="text-align: center;">
	<h1 style="background-color: SkyBlue;">Welcome to Revature
		WaterCan Plant Services</h1>
	<br>
	<div id=name></div>
	<script>
		function displayName() {
			var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
			console.log(user);
			var name = user.name;
			console.log(name);
			document.getElementById("name").innerHTML = "Welcome  " + name
					+ "...!!!";
			return name;
		}
		displayName()
	</script>
	<br>
	<br>
	<div class="row justify-content-center" style="margin: 0;">
		<div class="col-md-4 text-center">
			<div class="card text-center mb-4" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Availability Stock</h5>
					<p class="card-text">To Check Available Cans</p>
					<a href="?pageName=availability.jsp" class="btn btn-primary">VIEW</a>
				</div>
			</div>
		</div>
		<div class="col-md-4 text-center">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Order Cans</h5>
					<p class="card-text">To make your ORDER</p>
					<a href="?pageName=orderCan.jsp" class="btn btn-success">Order</a>
				</div>
			</div>
		</div>
		<div class="col-md-4 text-center">
			<div class="card text-center" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Reserve Cans</h5>
					<p class="card-text">To make CAN RESERVATION</p>
					<a href="?pageName=reserveCan.jsp" class="btn btn-success">Reserve</a>
				</div>
			</div>
		</div>
		<div class="col-md-4 text-center">
			<div class="card text-center" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">ReserveOrder Cans</h5>
					<p class="card-text">To make CAN RESERVATION ORDER</p>
					<a href="?pageName=reserveOrderCan.jsp" class="btn btn-success">ReserveOrder</a>
				</div>
			</div>
		</div>
		<div class="col-md-4 text-center">
			<div class="card text-center mb-4" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Cancel Order</h5>
					<p class="card-text">To Cancel Your Order</p>
					<a href="?pageName=cancel.jsp" class="btn btn-danger">CANCEL</a>
				</div>
			</div>
		</div>
		<div class="col-md-4 text-center">
			<div class="card text-center mb-3" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Contact Us</h5>
					<p class="card-text">Feel Free To CALL Us</p>
					<a href="?pageName=contact.jsp" class="btn btn-info">CONTACT US</a>
				</div>
			</div>
		</div>
		<div class="col-md-4 text-center">
			<div class="card text-center mb-4" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Home</h5>
					<p class="card-text">Back To HOME</p>
					<a href="index.jsp" class="btn btn-warning">GO Back</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>