<html>
<head>
<jsp:include page ="loginHeader.jsp"></jsp:include>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
</head>
<body>
</head>
	<script type="text/javascript">
function canReserveOrderSetUp()
{
     event.preventDefault();
var cans = document.getElementById("cans").value;
var reserveId = document.getElementById("reserveId").value;
var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
console.log(user);
var number = user.mobileNumber;
var formData = "cans=" + cans+"&number="+number+"&reserveId="+reserveId;
var url = "http://localhost:9000/modifiedReservedCan?" + formData;
$.post(url).then(function(response) {
   var data = response;
	   alert("Your reserved cans has been Ordered Sucessfully...!!!");
	   window.location.href = "?pageName=canSetUp.jsp";
},
function(error) {
       alert(error.responseJSON.message);
});
}
</script>
	<h1 style="background-color: SkyBlue;">Welcome to Revature
		WaterCan Plant Services</h1>
	Please Enter Your Reserve ID:
	<input type="number" id = "reserveId" min="1" pattern="/^-?\d+\.?\d*$/" onKeyPress="if(this.value.length==3) return false;">
	<br>
	<br> Please Enter No Of Cans to Order:
	<input type="number" id ="cans" min="1" pattern="/^-?\d+\.?\d*$/" onKeyPress="if(this.value.length==4) return false;">
	<br>
	<br>
	<b> Are you sure you want to Order this quantity of Cans :</b>
	<input type="button" value="Yes" class="btn btn-success"
		onclick=canReserveOrderSetUp()>
	<input type="button" value="No" class="btn btn-danger"
		onclick="window.location.href = '?pageName=canSetUp.jsp';">
</body>
</html>