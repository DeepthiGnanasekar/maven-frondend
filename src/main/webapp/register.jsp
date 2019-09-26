<!DOCTYPE html>
<html>
<head>
<script src="js/jquery-3.4.1.min.js"></script>
<script>

function register()
{
	event.preventDefault();
	var name = document.getElementById("name").value;
	var mobile=document.getElementById("mobile").value;
	var password=document.getElementById("password").value;
	var formData = "name=" +name + "&mobile="+ mobile +"&password="+ password;
    var url = "http://localhost:8080/maven-api/RegisterServlet?" + formData;
    console.log(url);
    $.get(url, function(response){
    console.log(response);
    var data=JSON.parse(response);
        if ( data.errorMessage != null){
    	alert(data.errorMessage);
     	window.location.href= "?pageName=register.jsp";
    	}
    else
        {
    	 alert("Registered successfully...!!! You can Login at anytime...!!!");    
     	window.location.href= "?pageName=home.jsp";
        }
    });
}
</script>
</head>
<body>
<form onsubmit="register()">
<div class="container">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
<hr>
    <label for="name"><b>Name</b></label>
    <input type="text" name="name" id="name" placeholder="Enter name" required autofocus />

    <label for="mobile"><b>Mobile Number:</b></label>
    <input type="tel" name="mobile" id="mobile" placeholder="Enter phone_number" required  /><br>

    <label for="password"><b>Set Password:</b></label>
    <input type="password" name="password" id="password" placeholder="Enter Password"  required /><br/><br/><hr>
    <hr>
<input type="submit" value="Register" class="btn btn-success" onclick="register()">
<input type="button" value="Cancel" class="btn btn-danger"  onclick="window.location.href = '?pageName=home.jsp';"><br><br>
</div>
<div class="container signin">
<label style="font-family:verdana;">Already have an account?<a href = "?pageName=login.jsp">Sign in.</a><br><br></label></div>
</form>
</body>
</html>