<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: bitstudent
  Date: 10/23/2019
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .error {
            color: red;
            font-size: small;
        }
    </style>
    <title>Airplane Reservation Form</title>
</head>
<body>
<h2>Purchase Tickets</h2>

<form:form action="processForm" modelAttribute="airplaneRoute">

    From:
    <form:select path="homeAirport">
        <form:option value="Los Angeles" label="Los Angeles International"/>
        <form:option value="O'Hare" label="O'Hare International"/>
        <form:option value="Dallas/Fort Worth" label="Dallas/Fort Worth International"/>
        <form:option value="John F. Kennedy" label="John F. Kennedy International"/>
    </form:select>
    <br/>
    <br/>
    <!-- Fill a select box by hardcoding options in bean -->
    To:
    <form:select path="destinationAirport">
        <form:options items="${airports.airportOptions}"/>
    </form:select>
    <br><br>

    Ticket Type:
    <form:radiobutton path="ticketType" value="Economy"/> Economy
    <form:radiobutton path="ticketType" value="Business"/> Business
    <form:radiobutton path="ticketType" value="First Class"/> First Class
    <form:errors path="ticketType" cssClass="error"/>
    <br><br>

    Special Requirements:
    <form:checkboxes path="requirements" items="${specialRequirements}"/>
    <br><br>
    <input type="submit" value="Make Reservation"/>

</form:form>

</body>
</html>
