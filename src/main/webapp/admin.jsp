<!DOCTYPE>
<html>
<head>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
function admin()
{
	event.preventDefault();
	var name = document.getElementById("name").value;
	var password = document.getElementById("password").value;
	var formData ="name=" +name + "&password="+ password;
	var url = "http://localhost:8080/maven-api/AdminServlet?" + formData;
    console.log(url);
    $.get(url, function(response){
    console.log(response);
    var data= JSON.parse(response);
    if ( data.errorMessage == null) {
    	alert("Login successfully");
    	window.location.href= "?pageName=adminSetUp.jsp";
    }
    else
    	{
    	alert("Invalid Crendentials...!!!");
     	window.location.href= "?pageName=admin.jsp";
    	}
    });
}
</script>
</head>
<body>
<div class="container">
<form onsubmit="admin()">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<h2  style="color:blue;"> Admin Login </h2><br>
<hr>
<label style="font-family:verdana;">Name:</label>
<input type="text" name="name" id="name" placeholder="Enter name"  required autofocus />
<br><br>
<label style="font-family:verdana;">Password:</label>
<input type="password" name="password" id="password" placeholder="Enter password" required /><hr>
<br><br>
<input type="submit" value="Submit" class="btn btn-success" onclick = admin()>
<input type="button" value="Cancel" class="btn btn-danger"  onclick="window.location.href = '?pageName=home.jsp';"><br>
</form>
</div></body>
</html>