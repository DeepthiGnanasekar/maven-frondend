<!DOCTYPE html>
<html>
<head>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">

function canOrder()
{
	event.preventDefault();
	var orderCans = document.getElementById("orderCans").value;
	var number = document.getElementById("number").value;
	var formData = "orderCans=" +orderCans+ "&number="+ number;
    var url = "http://localhost:8080/maven-api/OrderCanServlet?" + formData;
    console.log(url);
    $.get(url, function(response){
    console.log(response);
    var data= JSON.parse(response);
    if(data.errorMessage != null) {
    	alert(data.errorMessage);
    	alert("Invalid Crendentials...!!! Please enter Valid Details...!!!");
    	window.location.href = "?pageName=adminsetUp.jsp";
    }
    else
    	{
    	alert("Your Order has been Sucessfully Placed...!!!");
    	window.location.href = "?pageName=home.jsp";
    	}
    });
}
</script>
</head>
<body>
<form onsubmit = "canOrder()">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<a href = "availability.jsp">Availability_Stock</a><br>
<h2 style="background-text:green;">(ORDER THE CANS BELOW AND 100)</h2>
Enter no Of Cans to Order:
<input type = "number" name = "orderCans" id ="orderCans"><br>
Enter Your Mobile Number:
<input type = "number" name = "number" id ="number">
<p>Are you sure you want to order this quantity of Cans :</p>
<input type = "submit" value = "Yes" class="btn btn-success" onclick=canOrder()>
<input type = "button" value = "No" class="btn btn-danger" onclick="window.location.href = '?pageName=canSetUp.jsp';">
</form></body>
</html>