<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css"></link>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
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
    //if(data==null) 
        if ( data.errorMessage != null){
    	alert("Invalid Crendentials...!!! Please enter Valid Details...!!!");
     	window.location.href= "register.jsp";
    	}
    else
        {
    	 alert("Registered successfully...!!! You can Login at anytime...!!!");    
     	window.location.href= "index.jsp";
        }
       
    });
}
</script>
</head>
<body style="text-align:center;">
<jsp:include page="header.jsp"></jsp:include><br>

<form onsubmit="register()">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<h2  style="color:red;">Registration Details</h2>
<h2 style="color:blue;">Please Enter your Details Below :</h2>
<label style="font-family:verdana;">Name:</label>
<input type="text" name="name" id="name" placeholder="Enter name" required autofocus />
<br/>
<label style="font-family:verdana;">Mobile Number:</label>
<input type="tel" name="mobile" id="mobile" placeholder="Enter phone_number" required  />
<br/>
<label style="font-family:verdana;">Set Password:</label>
<input type="password" name="password" id="password" placeholder="Enter Password"  required />
<br/>
<input type="submit" value="Submit" class="btn btn-success" onclick="register()">
<input type="button" value="Cancel" class="btn btn-danger"  onclick="window.location.href = 'index.jsp';"><br>
</form>

</body>
</html>