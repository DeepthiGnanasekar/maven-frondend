<html>
<head>
</head>
<body>
<script type="text/javascript">
function cancel()
{
alert("Your Order has been Cancelled Successfully...!!!");
window.location.href = "index.jsp";
}
</script>
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
<p>Are you sure you want to Cancel your Order :</p>
<input type = "button" value = "Yes" class="btn btn-success" onclick=cancel()>
<input type = "button" value = "No" class="btn btn-danger" onclick="window.location.href = '?pageName=canSetUp.jsp';">
</body></html>