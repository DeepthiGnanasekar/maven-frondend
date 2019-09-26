<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="text-align: center">
<jsp:include page ="header.jsp"></jsp:include>
<div class="view" id="view">
       <%
           String pageName = request.getParameter("pageName");http:
           if (pageName == null || "".equals(pageName)) {
               pageName = "home.jsp";
           }
       %>
       <jsp:include page="<%=pageName%>"></jsp:include>
   </div></body>
</html>