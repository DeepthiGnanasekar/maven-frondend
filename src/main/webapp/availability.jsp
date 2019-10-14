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
   //var url = "http://localhost:8080/maven-api/ViewStockServlet";
   var url = "http://localhost:9000/viewStock?";
   $.getJSON(url, function(response){
      console.log(response);
       var data = response;
       var content="";
       document.getElementById("stock").innerHTML="";
       for(let stock of data){
           content += "<tr>";
           content += "<td>" + stock.availability_List + "</td>";
           content += "<td>" + stock.date + "</td>";
           content += "</tr>";
       }
       document.getElementById("stock").innerHTML = content;
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
                   <th>AVAILABILITY CANS</th>
                   <th>DATE&TIME</th>
               </tr>
           </thead>
           <tbody id="stock">
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



