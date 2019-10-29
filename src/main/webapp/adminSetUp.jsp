<!DOCTYPE html>
<html>
<head>
<script src="js/jquery.min.js"></script>
<jsp:include page ="adminHeader.jsp"></jsp:include>
<script type="text/javascript">
function goBack() {
	  window.history.back();
	}
function setStock()
{
	event.preventDefault();
	var can = document.getElementById("can").value;
	var formData = "can=" +can;
    //var url = "http://localhost:8080/maven-api/AdminSetUpServlet?" + formData;
    var url = "http://localhost:9000/setCan?"+ formData;
    console.log(url);
    $.post(url).then(function(response) 
   {
		var data = response.status;
		console.log(response);
		if (data != null) {
			alert("Availability Stock has been Sucessfully added...!!!");
	    	window.location.href = "?pageName=home.jsp";
		} 
	},
	function(error) {
		var data = error.message;
		if (data.message != null) {
			alert("Please enter valid stock!");
	    	window.location.href = "?pageName=adminsetUp.jsp";
		} 
    });
}
</script>
</head>
<body>
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1><br><br>
<div class="row justify-content-center" style="margin:0;">
<div class="col-md-4 text-center">
 <div class="card text-center mb-4" style="width: 18rem;">
 <div class="card-body">
   <h5 class="card-title">Availability Stock</h5>
   <p class="card-text">To Check Available Cans</p>
   <a href="?pageName=availability.jsp" class="btn btn-primary">VIEW</a>
 </div>
</div>
</div>
    <div class="col-md-4 text-center">
        <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">View Orders</h5>
            <p class="card-text">To View Ordered Cans</p>
            <a href="?pageName=viewOrders.jsp" class="btn btn-success">Order</a>
          </div>
        </div>
    </div>
<div class="col-md-4 text-center">
<div class="card text-center" style="width: 18rem;">
 <div class="card-body">
   <h5 class="card-title">View Reserved Orders</h5>
   <p class="card-text">To View Reserved and ReservedOrdered Cans</p>
   <a href="?pageName=viewReserveOrders.jsp" class="btn btn-success">Reserve</a>
 </div>
</div>
</div>
<form onsubmit=setStock() >
Set Availability number of WaterCans : 
<input type="number" name="can" id = "can" placeholder="Enter the cans" pattern="/^-?\d+\.?\d*$/" onKeyPress="if(this.value.length==5) return false;" required autofocus  /> <br><br>
<input type="submit" value="Submit" class="btn btn-success">
<input type="button" value="Cancel" class="btn btn-danger" onclick="window.location.href = '?pageName=home.jsp';"><br><br>
<button onclick="goBack()" class="btn btn-warning">Go Back</button>
</form>
</body>
</html>