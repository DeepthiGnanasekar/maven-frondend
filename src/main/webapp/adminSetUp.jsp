<!DOCTYPE html>
<html>
<head>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
function goBack() {
	  window.history.back();
	}
function setStock()
{
	event.preventDefault();
	var can = document.getElementById("can").value;
	var formData = "can=" +can;
    //var url = "http://localhost:8080/maven-api/AdminSetUpServlet?" + formData;
    var url = "http://localhost:9000/setCan?"+ formData;
    console.log(url);
    $.post(url).then(function(response) 
   {
		var data = response.status;
		console.log(response);
		if (data != null) {
			alert("Availability Stock has been Sucessfully added...!!!");
	    	window.location.href = "?pageName=home.jsp";
		} 
	},
	function(error) {
		var data = error.message;
		if (data.message != null) {
			alert("Please enter valid stock!");
	    	window.location.href = "?pageName=adminsetUp.jsp";
		} 
    });
}
</script>
</head>
<body>
<form onsubmit=setStock() >
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<a href = "?pageName=availability.jsp">Availability_Stock</a><br><br>
Set Availability number of WaterCans : 
<input type="number" name="can" id = "can" placeholder="Enter the cans" required autofocus  /> <br><br>
<input type="submit" value="Submit" class="btn btn-success">
<input type="button" value="Cancel" class="btn btn-danger" onclick="window.location.href = '?pageName=home.jsp';"><br><br>
<button onclick="goBack()" class="btn btn-warning">Go Back</button>
</form></body>
</html>