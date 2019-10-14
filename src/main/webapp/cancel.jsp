<html>
<head>
</head>
<body>
<script type="text/javascript">
function login()
{
	event.preventDefault();
	var phone_number = document.getElementById("number").value;
	var password=document.getElementById("password").value;
	var formData = "number=" +phone_number + "&password="+ password;
	//var url = "http://localhost:8080/maven-api/LoginServlet?" +formData;
	var url = "http://localhost:9000/login?" +formData;
	$.post(url, function(response){
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
function goBack() {
	  window.history.back();
	}
function cancel()
{
alert("Your Order has been Cancelled Successfully...!!!");
window.location.href = "index.jsp";
}
</script>
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
Enter Your Order id:
<input type = "number" name = "orderCans" id ="orderCans" min="1" required><br><br>
<p>To Cancel your Order press Yes/No :</p>
<input type = "button" value = "Yes" class="btn btn-success" onclick=cancel()>
<input type = "button" value = "No" class="btn btn-danger" onclick="window.location.href = '?pageName=canSetUp.jsp';"><br><br>
<button onclick="goBack()" class="btn btn-warning">Go Back</button>
</body></html>