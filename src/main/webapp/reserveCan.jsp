<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
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
    
    if(data.errorMessage != null) {
    	alert(data.errorMessage);
    	alert("Invalid Crendentials...!!! Please enter Valid Details...!!!");
    	window.location.href = "adminsetUp.jsp";
    }
    else
    	{
    	//alert(data.message);
    	alert("Your cans has been Reserved...!!! You can Order the Cans at any Time...!!!Thank You for Using Our Services...!!!");
    	window.location.href = "index.jsp";
    	}
    });

}
</script>
<body>
<h1>Welcome to Revature WaterCan Plant Services</h1>
<form onsubmit="canReserve()">
<a href = "availability.jsp">Availability_Stock</a><br>
Enter No Of Cans to reserve:
<input type = "number" name = "reserveCans" id ="reserveCans"><br>
Enter Your Mobile Number:
<input type = "number" name = "number" id ="number">
<p>Are you sure you want to reserve this quantity of Cans :</p>
<input type = "button" value = "Yes" class="btn btn-success" onclick=canReserve()>
<input type = "button" value = "No" class="btn btn-danger" onclick="window.location.href = 'canSetUp.jsp';">
</form></body>
</html>