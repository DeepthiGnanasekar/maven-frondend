<!DOCTYPE html>
<html>
<head>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
function validateName()
{
var name=document.getElementById("name").value;
var nameRegex=/^[A-Za-z]*$/;
if(nameRegex.test(name))
{
document.getElementById("namelocation").innerHTML="";
}
else
{
document.getElementById("message").innerHTML="Name should contain alphabets only";
document.getElementById("name").focus();
}
}
function validatePhoneNumber()
{
var phoneNumber=document.getElementById("mobile").value;
var phoneNumberRegex=/^[0-9]*$/;
if(phoneNumberRegex.test(phoneNumber))
{
document.getElementById("phoneNumberlocation").innerHTML="";
}
else
{
document.getElementById("message").innerHTML="Enter valid phone number";
}
}
function validatePassword()
{
var password=document.getElementById("password").value;
var passwordRegex=/^[A-Za-z0-9~!@#$%^&()-_=+{}|,;:<>/]*$/;
if(passwordRegex.test(password))
{
document.getElementById("passwordlocation").innerHTML="";
}
else
{
document.getElementById("message").innerHTML="Password should contain alphabets or numbers";
}
}
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
<div id="message" style="color:red"></div>
    <label for="name"><b>Name :</b></label>
    <input type="text" name="name" id="name" placeholder="Enter name" onkeyup="validateName()" required autofocus /><br>
   <span id="namelocation" ></span>
    <label for="mobile"><b>Mobile Number :</b></label>
    <input type="tel" name="mobile" id="mobile" placeholder="Enter phone_number" onkeyup="validatePhoneNumber()" required  /><br>
    <span id="phoneNumberlocation" style="color:red"></span>
    <label for="password"><b>Set Password :</b></label>
    <input type="password" name="password" id="password" placeholder="Enter Password" onkeyup="validatePassword()" required /><br/><br/>
    <span id="passwordlocation" style="color:red"></span><hr>
<input type="submit" value="Register" class="btn btn-success" onclick="register()">
<input type="button" value="Cancel" class="btn btn-danger"  onclick="window.location.href = '?pageName=home.jsp';"><br><br>
</div>
<div class="container signin">
<label style="font-family:verdana;">Already have an account?<a href = "?pageName=login.jsp">Sign in.</a><br><br></label></div>
</form>
</body>
</html>