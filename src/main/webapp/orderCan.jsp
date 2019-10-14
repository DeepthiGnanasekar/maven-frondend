<head>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
	function canOrder() {
		event.preventDefault();
		var orderCans = document.getElementById("orderCans").value;
		var number = document.getElementById("number").value;
		var formData = "orderCans=" + orderCans + "&number=" + number;
		// var url = "http://localhost:8080/maven-api/OrderCanServlet?" + formData;
		var url = "http://localhost:9000/orderCan?" + formData;
		console.log(url);
		$.post(url).then(function(response) {
			console.log(response);
			localStorage.setItem("LOGGED_IN_USER", response);
			var data = response;
			console.log(data);
			alert("Your Order has been Sucessfully Placed...!!!");
			displayId(data);
			window.location.href = "?pageName=home.jsp";

		}, function(error) {
			console.log(error.response);
			var msg = error.response.message;
			console.log(msg);
			if (msg != null) {
				alert(msg);
			}
		});
	}

	function displayId(id) {
		alert(document.getElementById("id").innerHTML = "Your Order Id is : "
				+ id + "...!!!");
	}
	function goBack() {
		window.history.back();
	}
</script>
</head>
<body>
	<div id="id"></div>
	<form onsubmit="canOrder()">
		<h1 style="background-color: SkyBlue;">Welcome to Revature
			WaterCan Plant Services</h1>
		<br> <a href="availability.jsp">Availability_Stock</a><br>
		<br> Enter Number Of Cans to Order: <input type="number"
			name="orderCans" id="orderCans" min="1" required><br>
		<br> Enter Your Mobile Number: <input type="number" name="number"
			id="number" required><br>
		<br> <input type="submit" value="Yes" class="btn btn-success">
		<input type="button" value="No" class="btn btn-danger"
			onclick="window.location.href = '?pageName=canSetUp.jsp';"><br>
		<br>
		<button onclick="goBack()" class="btn btn-warning">Go Back</button>
	</form>
</body>
</html>