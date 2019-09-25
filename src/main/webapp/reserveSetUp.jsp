<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<script type="text/javascript">
function canReserveOrderSetUp()
{
alert("Your reserved cans has been Ordered Sucessfully...!!!");
window.location.href = "canSetUp.jsp";
}
</script>
<h1>Welcome to Revature WaterCan Plant Services</h1>
Enter No Of Cans to Order:
<input type = "text">
<p>Are you sure you want to Order this quantity of Cans :</p>
<input type = "button" value = "Yes" class="btn btn-success" onclick=canReserveOrderSetUp()>
<input type = "button" value = "No" class="btn btn-danger" onclick="window.location.href = 'canSetUp.jsp';">
</body></html>