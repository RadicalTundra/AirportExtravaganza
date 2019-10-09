<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form Processing</title>
</head>
<body>


<!-- Form v1, mapped to "processForm" in SimpleFormController.java -->
<!-- Demonstrates model, view template, and controller -->
<h2>Be Shouted At</h2>
<form action="processForm" method="GET">
    <input type="text" name="studentName" placeholder="Student Name">
    <br/>
    <input type="submit">
</form>

<!-- Form v2, mapped to "shoutHelloAgain" in SimpleFormController.java -->
<!-- Demonstrates model, view template, controller, -->
<h2>Be Shouted At Using @RequestParam Binding</h2>
<form action="shoutHelloAgain" method="GET">
    <input type="text" name="studentName" placeholder="Student Name">
    <br/>
    <input type="submit">
</form>
</body>
</html>
