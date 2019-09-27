<html>
<head>
<script>
function logout(){
	localStorage.clear();
	window.location.href= "?pageName=home.jsp";
}</script></head>
<body style="text-align:center;">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<a href="?pageName=availability.jsp">Availability_Stock</a><br>
<a href="?pageName=orderCan.jsp">Order_Cans</a><br>
<a href="?pageName=reserveCan.jsp">Reserve_Cans</a><br>
<a href="?pageName=reserveOrderCan.jsp">ReserveOrder_Cans</a><br>
<a href="?pageName=cancel.jsp">Cancel_Order_Cans</a><br><br>
<button class="btn btn-danger" onclick="logout()">Logout</button>
</body>
</html>