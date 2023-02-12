<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Input your data</title>
</head>
<body>
<h1>Input your data</h1>
<form method="post" action="form-servlet">
    <label>Please input your name: <input type="text" name="name" required></label><br>
    <label>Please input your age: <input type="number" name="age" required></label><br>
    <input type="submit" value="Send data">
    <input type="reset" value="Clear data">
</form>
</body>
</html>