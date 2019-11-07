<head>
<jsp:include page ="loginHeader.jsp"></jsp:include>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">

function checkNumber() {
	event.preventDefault();
	var number = document.getElementById("number").value;
    var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
    console.log(user);
    var mobile = user.mobileNumber;
    console.log(mobile);
    if(mobile==number){
    	canOrder();
    	}
    else{
        alert("Please Enter Valid Mobile Number...!!!");
        }
}

	function canOrder() {
	event.preventDefault();
	var orderCans = document.getElementById("orderCans").value;
	var number = document.getElementById("number").value;
	var formData = "orderCans=" + orderCans + "&number=" + number;
		// var url = "http://localhost:8080/maven-api/OrderCanServlet?" + formData;
		var url = "http://localhost:9000/orderCan?" + formData;
		console.log(url);
		$.post(url).then(function(response) {
			localStorage.setItem("LOGGED_IN_USER", response);
			var data = response;
			alert("Your Order has been Sucessfully Placed...!!!");
			displayId(data);
			window.location.href = "?pageName=canSetUp.jsp";

		}, function(error) {
			var msg = error.responseJSON;
				alert(msg.message);
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
	<form onsubmit="checkNumber()">
		<h1 style="background-color: SkyBlue;">Welcome to Revature
			WaterCan Plant Services</h1>
		<br> <a href="availability.jsp">Availability_Stock</a><br>
		<br> Enter Number Of Cans to Order: <input type="number"
			name="orderCans" id="orderCans" min="1" pattern="/^-?\d+\.?\d*$/" onKeyPress="if(this.value.length==4) return false;" required><br>
		<br> Enter Your Mobile Number: <input type="number" name="number"
			id="number" pattern="/^-?\d+\.?\d*$/" onKeyPress="if(this.value.length==10) return false;" required><br>
		<br> <input type="submit" value="Yes" class="btn btn-success">
		<input type="button" value="No" class="btn btn-danger"
			onclick="window.location.href = '?pageName=canSetUp.jsp';"><br>
		<br>
		<button onclick="goBack()" class="btn btn-warning">Go Back</button>
	</form>
</body>
</html>