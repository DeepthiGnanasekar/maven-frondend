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
	function validateName() {
         var name = document.getElementById("name").value;
         var nameRegex = /^[A-Za-z]*$/;
         if (nameRegex.test(name)) {
             document.getElementById("namelocation").innerHTML = "";
 			document.getElementById("message").innerHTML = "";
             document.getElementById("Button").disabled = false;
         } else {
             document.getElementById("message").innerHTML = "Name should contain alphabets only";
             document.getElementById("Button").disabled = true;
         }
     }
     function validatePhoneNumber() {
         var phoneNumber = document.getElementById("mobile").value;
         var phoneNumberRegex = /^([0][1-9]\d{9}$|^[1-9]\d{9})*$/;
         if (phoneNumberRegex.test(phoneNumber)) {
             document.getElementById("phoneNumberlocation").innerHTML = "";
 			document.getElementById("message").innerHTML = "";
             document.getElementById("Button").disabled = false;
         }
         else {
             document.getElementById("message").innerHTML = "Enter valid phone number";
             document.getElementById("Button").disabled = true;
         }
     }

	function register() {
		event.preventDefault();
		var name = document.getElementById("name").value;
		var mobile = document.getElementById("mobile").value;
		var password = document.getElementById("password").value;
		var formData = "name=" + name + "&mobile=" + mobile + "&password="+ password;
		//var url = "http://localhost:8080/maven-api/RegisterServlet?" + formData;
		var url = "http://localhost:9000/register?" + formData;
		console.log(url);
		$.post(url).then(function(response) {
							var data = response.message;
							if (data != null) {
								alert(data);
								window.location.href = "?pageName=home.jsp";
							} 
						},
						function(error) {
								alert("This Account is already Existing (or) Invalid Details...Please Enter Valid Details...!!!");
								window.location.href = "?pageName=register.jsp";
						});
	}
</script>
</head>
<body>
	<form onsubmit="register()">
		<div class="container">
			<h1 style="background-color: SkyBlue;">Welcome to Revature
				WaterCan Plant Services</h1>
			<h1>Register</h1>
			<p>Please fill in this form to create an account.</p>
			<hr>
			<div id="message" style="color: red"></div>
			<label for="name"><b>Name :</b></label> <input type="text"
				name="name" id="name" placeholder="Enter name"
				onkeyup="validateName()" required autofocus /><br> <span
				id="namelocation"></span> <label for="mobile"><b>Mobile
					Number :</b></label> <input type="tel" name="mobile" id="mobile"
				placeholder="Enter phone_number" onkeyup="validatePhoneNumber()"
				required /><br> <span id="phoneNumberlocation"
				style="color: red"></span> <label for="password"><b>Set
					Password :</b></label> <input type="password" name="password" id="password"  name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
				placeholder="Enter Password"  required />
			<input type="checkbox" onclick="myFunction()">Show Password<br />
			<br /> <span id="passwordlocation" style="color: red"></span>
			<hr>
			<input type="submit" value="Register" class="btn btn-success" id ="Button" disabled
				> <input type="button" value="Cancel"
				class="btn btn-danger"
				onclick="window.location.href = '?pageName=home.jsp';"><br>
			<br>
		</div>
		<div class="container signin">
			<label style="font-family: verdana;">Already have an account?<a
				href="?pageName=login.jsp">Sign in.</a><br>
			<br></label>
		</div>
	</form>
</body>
</html>