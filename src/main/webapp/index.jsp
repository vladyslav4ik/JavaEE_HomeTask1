<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Say hi!</h1>
<form method="post" action="hello-servlet">
    <label>Please input your name: <input type="text" name="name"></label><br>
    <label>Please input your age: <input type="number" name="age"></label><br>
    <input type="submit" value="Send data">
    <input type="reset" value="Clear data">
</form>
</body>
</html>