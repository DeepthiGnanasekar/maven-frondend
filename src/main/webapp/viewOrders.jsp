<!DOCTYPE html>
<html>
<head>
<title>UsersList</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
function viewStock()
{
   var url = "http://localhost:8080/maven-api/ViewStockServlet";
   $.getJSON(url, function(response){
       //console.log(response);
       var data = response;
       var content="";
       document.getElementById("orderStock").innerHTML="";
       for(let stock of data){
           content += "<tr>";
           content += "<td>" + orderStock.id + "</td>";
           content += "<td>" + orderStock.Mobile_Number + "</td>";
           content += "<td>" + orderStock.Ordered_List + "</td>";
           content += "<td>" + orderStock.Reserved_List + "</td>";
           content += "<td>" + orderStock.Reserved_Order + "</td>";
           content += "<td>" + orderStock.STATUS + "</td>";
           content += "<td>" + orderStock.date.day+"-"+orderStock.date.month+"-"+orderStock.date.year + "</td>";
           content += "</tr>";
       }
       document.getElementById("orderStock").innerHTML = content;
   });
}
</script>
</head>
<body style="text-align: center">
<h1 style="background-color:SkyBlue;">Welcome to Revature WaterCan Plant Services</h1>
   <div id="stock-section">
       <table border="1" class="table table-condensed">
           <thead>
               <tr>
                   <th>id</th>
                   <th>Mobile_Number</th>
                    <th>Ordered_List</th>
                    <th>Reserved_List</th>
                    <th>Reserved_Order</th>
                   <th>STATUS</th>
                   <th>date</th>
               </tr>
           </thead>
           <tbody id="orderStock">
           </tbody>
       </table>
   </div>
   <script>
   viewStock();
</script>
<script>
function goBack() {
  window.history.back();
}
</script>
<button onclick="goBack()" class="btn btn-warning">Go Back</button>
</body>
</html>
