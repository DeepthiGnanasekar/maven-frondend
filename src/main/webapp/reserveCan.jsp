<!DOCTYPE html>
<html>
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
    	canReserve();
    	}
    else{
        alert("Please Enter Valid Mobile Number...!!!");}
    return name;
}

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
		window.location.href = "?pageName=canSetUp.jsp";

	}, function(error) {
		var msg = error.responseJSON;
			alert(msg.message);
    });
}
function displayId(id) {
    alert(document.getElementById("id").innerHTML = "Your Reserve Id is : " + id+"...!!!");
}
function goBack() {
	  window.history.back();
	}
</script>
<body>
<div id="id"></div>
<form onsubmit="checkNumber()">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1><br>
<a href = "availability.jsp">Availability Stock</a><br><br>
Enter Number Of Cans to reserve:
<input type = "number" name = "reserveCans" id ="reserveCans" min="1" pattern="/^-?\d+\.?\d*$/" onKeyPress="if(this.value.length==4) return false;" required><br><br>
Enter Your Mobile Number:
<input type = "number" name = "number" id ="number" pattern="/^-?\d+\.?\d*$/" onKeyPress="if(this.value.length==10) return false;" required><br><br>
<input type = "submit" value = "Yes" class="btn btn-success">
<input type = "button" value = "No" class="btn btn-danger" onclick="window.location.href = '?pageName=canSetUp.jsp';"><br><br>
<button onclick="goBack()" class="btn btn-warning">Go Back</button>
</form></body>
</html>