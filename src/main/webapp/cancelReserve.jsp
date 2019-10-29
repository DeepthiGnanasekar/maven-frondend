<html>
<head>
</head>
<body>
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript">
function cancelOrder()
{
	event.preventDefault();
	var orderId=document.getElementById("orderId").value;
	var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
	var number = user.mobileNumber;
	var formData = "orderId=" + orderId+"&number="+number;
	var url = "http://localhost:9000/cancelReserveOrder?" + formData;
	$.post(url).then(function(response) {
		   var data = response;
		   alert("Your Order has been successfully Cancelled...!!!");
		       window.location.href = "?pageName=home.jsp";
		},
		function(error) {
		   var data = error;
		   console.log(data);
		       alert(data.responseJSON.message);
		     	window.location.href= "?pageName=cancelReserve.jsp";
		});
	}
function goBack() {
	  window.history.back();
	}
function cancel()
{
alert("Your Order has been Cancelled Successfully...!!!");
window.location.href = "index.jsp";
}
</script>
	<h1 style="background-color: SkyBlue;">Welcome to Revature
		WaterCan Plant Services</h1>
	Enter Your Reserve id:
	<input type="number" name="orderCans" id="orderId" min="1"
		pattern="/^-?\d+\.?\d*$/"
		onKeyPress="if(this.value.length==10) return false;" required>
	<br>
	<br>
	<p>To Cancel your Order press "Yes" :</p>
	<input type="button" value="Yes" class="btn btn-success"
		onclick=cancelOrder()>
	<input type="button" value="No" class="btn btn-danger"
		onclick="window.location.href = '?pageName=canSetUp.jsp';">
	<br>
	<br>
	<button onclick="goBack()" class="btn btn-warning">Go Back</button>
</body>
</html>