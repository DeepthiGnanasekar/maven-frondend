<html>
<head>
<jsp:include page ="loginHeader.jsp"></jsp:include>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript"></script>
<script>
function myFunction() {
  var person = prompt("Please enter your reserve ID :");
  if (person != null) {
	  canReserveOrder(person);
  }
}

function goBack() {
	  window.history.back();
	}
	
function canReserveOrder(person)
{
	event.preventDefault();
	var reserveId = person;
	var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
	var number = user.mobileNumber;
	var formData = "reserveId=" + reserveId+"&number="+number;
	var url = "http://localhost:9000/reserveOrderCan?" + formData;
	$.post(url).then(function(response) {
		   var data = response;
		       alert("Sucessfully Ordered Your Reserved Water Cans");
		       window.location.href = "?pageName=canSetUp.jsp";
		},
		function(error) {
		   var data = error;
		   console.log(data);
		       alert(data.responseJSON.message);
		});
	}
	</script>
	</head>
	<body>
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<p>Do you want to order your reserved Cans :</p>
<button type = "button"  class="btn btn-success" onclick = "myFunction()">Yes</button>
<p id="demo"></p>
<input type = "button" value = "Cancel" class="btn btn-danger" onclick="window.location.href = '?pageName=cancelReserve.jsp';">
<input type = "button" value = "Modify the reserve" class="btn btn-primary" onclick="window.location.href = '?pageName=reserveSetUp.jsp';"><br><br>
<button onclick="goBack()" class="btn btn-warning">Go Back</button>
</body>
</html>