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
    var url = "http://localhost:8080/maven-api/ReserveCanServlet?" + formData;
    console.log(url);
    $.get(url, function(response){
    console.log(response);
    var data= JSON.parse(response);
    console.log(data.number);
    if(data.errorMessage != null) {
    	alert(data.errorMessage);
    	window.location.href = "?pageName=reserveCan.jsp";
    }
    else
    	{
    	alert("Your cans has been Reserved...!!! You can Order the Cans at any Time...!!!Thank You for Using Our Services...!!!");
    	window.location.href = "?pageName=home.jsp";
    	}
    });
}
</script>
<body>
<form onsubmit="canReserve()">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1><br>
<a href = "availability.jsp">Availability_Stock</a><br><br>
Enter Number Of Cans to reserve:
<input type = "number" name = "reserveCans" id ="reserveCans" min="1"><br><br>
Enter Your Mobile Number:
<input type = "number" name = "number" id ="number"><br><br>
<p>Are you sure you want to reserve this quantity of Cans :</p>
<input type = "submit" value = "Yes" class="btn btn-success">
<input type = "button" value = "No" class="btn btn-danger" onclick="window.location.href = '?pageName=canSetUp.jsp';">
</form></body>
</html>