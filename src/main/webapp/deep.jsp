<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
function viewStock()
{
   var url = "http://localhost:9000/viewStock";
   $.getJSON(url, function(response){
       //console.log(response);
       var data = response;
       var content="";
       document.getElementById("stock").innerHTML="";
       for(let stock of data){
           content += "<tr>";
           content += "<td>" + stock.availability_List + "</td>";
           content += "<td>" + stock.date.day+"-"+stock.date.month+"-"+stock.date.year + "</td>";
           content += "</tr>";
       }
       document.getElementById("stock").innerHTML = content;
   });
}
</script>
</head>
<body>
<a href = "#" onclick="viewStock()">VIEWSTOCK</a>
<div id = "stock"></div>
</body>
</html>