<head>
<jsp:include page ="header.jsp"></jsp:include>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
function login()
{
	event.preventDefault();
	var phone_number = document.getElementById("number").value;
	var password=document.getElementById("password").value;
	var formData = "number=" +phone_number + "&password="+ password;
	//var url = "http://localhost:8080/maven-api/LoginServlet?" +formData;
	var url = "http://localhost:9000/login?" +formData;
	$.post(url).then(function(response){
	    console.log(response);
	    localStorage.setItem("LOGGED_IN_USER",JSON.stringify(response));
	    var data=response;
	    console.log(response.Mobile_Number);
	    	if(data.errorMessage== null){
	    		alert("Login successfully");
	    		window.location.href= "?pageName=canSetUp.jsp";
	    	}
	    },
	    function(error){
		    console.log(error);
		    var info=error.responseJSON.message;
		    	if( info!= null){		    		
		    	alert("Invalid Crendentials...!!! Please enter Valid Details...!!!");
		    	}
		    });
}
</script>
</head>
<body style="text-align:center;">
<div class="container">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<h2 style="color:blue;">User Login </h2><br>
<hr>
<form onsubmit="login()">
<div id="message" style="color:red"></div>
<label style="font-family:verdana;">Mobile Number:</label>
<input type="tel" name="phone_number" id="number" placeholder="Enter phone Number" required/><br><br>
<span id="phoneNumberlocation" style="color:red"></span>
<label style="font-family:verdana;">Password:</label>
<input type="password" name="password" id="password" placeholder="Enter Password"  required />
<input type="checkbox" onclick="myFunction()">Show Password<br/><br/><hr>
<input type="submit"  value="Submit" class="btn btn-success">
<input type="button"  value="Cancel" class="btn btn-danger" onclick="window.location.href = '?pageName=home.jsp';">
</form>
</div>
</body>

</html>