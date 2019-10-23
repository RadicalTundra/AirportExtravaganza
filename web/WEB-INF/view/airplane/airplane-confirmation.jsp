<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bitstudent
  Date: 10/23/2019
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Airplane Confirmation</title>
</head>
<body>

Home Airport: ${airplaneRoute.homeAirport}
<br>
Destination Airport: ${airplaneRoute.destinationAirport}
<br>
Ticket Type: ${airplaneRoute.ticketType}
<br>
Special Requirements:
<ul>
    <c:forEach var="aRequirement" items="${airplaneRoute.requirements}">
        <li>${aRequirement}</li>
    </c:forEach>
</ul>
</body>
</html>
