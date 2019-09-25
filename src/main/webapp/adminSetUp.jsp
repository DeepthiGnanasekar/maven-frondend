<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
function setStock()
{
	event.preventDefault();
	var can = document.getElementById("can").value;
	var formData = "can=" +can;
    var url = "http://localhost:8080/maven-api/AdminSetUpServlet?" + formData;
    console.log(url);
    $.get(url,function(response){
    console.log(response);
    var data= response;
    if ( data.errorMessage!= null) {
    	alert("Invalid Crendentials...!!! Please enter Valid Details...!!!");
    	window.location.href = "adminsetUp.jsp";
    }
    else
    	{
    	alert("Availability Stock has been Sucessfully added...!!!");
    	window.location.href = "index.jsp";
    	}
       
    });

}
</script>
</head>
<body>
<form onsubmit=setStock() >
<h1>Welcome to Revature WaterCan Plant Services</h1>
<a href = "availability.jsp">Availability_Stock</a><br>
Set Availability number of WaterCans : 
<input type="text" name="can" id = "can" placeholder="Enter the cans" required autofocus  /> <br>
<input type="submit" value="Submit" class="btn btn-success" onclick = setStock() >
<input type="button" value="Cancel" class="btn btn-danger" onclick="window.location.href = 'index.jsp';"><br>
</form></body>
</html>