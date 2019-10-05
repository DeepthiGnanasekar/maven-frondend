<html>
<head>
<script>

function logout(){
	localStorage.clear();
	window.location.href= "?pageName=home.jsp";
}</script></head>
<body style="text-align:center;">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<br>
<div id=name></div>
<script>
function displayName() {
    var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
    var name = user.name;
    document.getElementById("name").innerHTML = "Welcome  " + name+"...!!!";
    return name;
}
displayName();
</script>
<br>
<br>
<a href="?pageName=availability.jsp">Availability Stock</a><br>
<a href="?pageName=orderCan.jsp">Order Cans</a><br>
<a href="?pageName=reserveCan.jsp">Reserve Cans</a><br>
<a href="?pageName=reserveOrderCan.jsp">ReserveOrder Cans</a><br>
<a href="?pageName=cancel.jsp">Cancel_Order Cans</a><br><br>
<button class="btn btn-danger" onclick="logout()">Logout</button>
</body>
</html>