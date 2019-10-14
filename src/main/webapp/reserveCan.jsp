<!DOCTYPE html>
<html>
<head>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
function canReserve()
{
	event.preventDefault();
	var reserveCans = document.getElementById("reserveCans").value;
	var number = document.getElementById("number").value;
	var formData = "reserveCans=" +reserveCans+ "&number="+ number;
    //var url = "http://localhost:8080/maven-api/ReserveCanServlet?" + formData;
    var url = "http://localhost:9000/reserveCan?" + formData;
    console.log(url);
    $.post(url).then(function(response) {
		console.log(response);
		localStorage.setItem("LOGGED_IN_USER", response);
		var data = response;
		console.log(data);
		alert("Your cans has been Reserved...!!! You can Order the Cans at any Time...!!!Thank You for Using Our Services...!!!");
		displayId(data);
		window.location.href = "?pageName=home.jsp";

	}, function(error) {
		console.log(message);
		var msg = error.response.message;
		console.log(msg);
		if (msg != null) {
			alert(msg);
		}
    });
}
function displayId(id) {
    alert(document.getElementById("id").innerHTML = "Your Order Id is : " + id+"...!!!");
}
function goBack() {
	  window.history.back();
	}
</script>
<body>
<div id="id"></div>
<form onsubmit="canReserve()">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1><br>
<a href = "availability.jsp">Availability Stock</a><br><br>
Enter Number Of Cans to reserve:
<input type = "number" name = "reserveCans" id ="reserveCans" min="1" required><br><br>
Enter Your Mobile Number:
<input type = "number" name = "number" id ="number" required><br><br>
<input type = "submit" value = "Yes" class="btn btn-success">
<input type = "button" value = "No" class="btn btn-danger" onclick="window.location.href = '?pageName=canSetUp.jsp';"><br><br>
<button onclick="goBack()" class="btn btn-warning">Go Back</button>
</form></body>
</html>