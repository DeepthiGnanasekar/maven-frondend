<!DOCTYPE html>
<html>
<head>
<script src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function login()
{
	event.preventDefault();
	var phone_number = document.getElementById("phone_number").value;
	var password=document.getElementById("password").value;
	var formData = "phone_number=" +phone_number + "&password="+ password;
	var url = "http://localhost:8080/maven-api/LoginServlet?" +formData;
	$.get(url, function(response){
	    console.log(response);
	    localStorage.setItem("LOGGED_IN_USER",response);
	    var data=JSON.parse(response);
	    	if(data.errorMessage== null){
	    		alert("Login successfully");
	    		window.location.href= "?pageName=canSetUp.jsp";
	    	}
	    else
	    	{
	    	alert("Invalid Crendentials...!!! Please enter Valid Details...!!!");
	     	window.location.href= "?pageName=login.jsp";
	    	}
	    });
}
</script>
</head>
<body style="text-align:center;">
<form onsubmit="login()">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<h2 style="color:blue;">User Login </h2><br>
<label style="font-family:verdana;">Mobile Number:</label>
<input type="tel" name="phone_number" id="phone_number" placeholder="Enter phone_number" required  /><br><br>
<label style="font-family:verdana;">Password:</label>
<input type="password" name="password" id="password" placeholder="Enter Password"  required /><br/><br/>
<input type="submit"  value="Submit" class="btn btn-success"onclick=login()>
<input type="button"  value="Cancel" class="btn btn-danger" onclick="window.location.href = '?pageName=home.jsp';">
</form>
</body>
</html>