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
    console.log(data.number);
    if(data.errorMessage!=null) {
         alert(data.errorMessage);
    	window.location.href = "?pageName=orderCan.jsp";
    }
    else
    	{
    	var r = confirm("Are you sure you want to order this quantity of Cans? :");
    	  if (r == true) {
    		  alert("Your Order has been Sucessfully Placed...!!!");
    	    	window.location.href = "?pageName=home.jsp";
    	  } else {
    		  alert("Your reservation is not Done...!!!");
        	window.location.href = "?pageName=orderCan.jsp";
    	  }
    	}
    });
}
</script>
</head>
<body>
<form onsubmit = "canOrder()">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1><br>
<a href = "availability.jsp">Availability_Stock</a><br><br>
Enter Number Of Cans to Order:
<input type = "number" name = "orderCans" id ="orderCans" min="1" required><br><br>
Enter Your Mobile Number:
<input type = "number" name = "number" id ="number"><br><br>
<input type = "submit" value = "Yes" class="btn btn-success">
<input type = "button" value = "No" class="btn btn-danger" onclick="window.location.href = '?pageName=canSetUp.jsp';">
</form></body>
</html>