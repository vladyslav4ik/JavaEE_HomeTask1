<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Input your data</title>
</head>
<body>
<form method="post" action="form-servlet">
    <fieldset>
        <legend>Please input your personal data</legend>
        <label>Please input your name: <input type="text" name="name" required></label><br>
        <label>Please input your surname: <input type="text" name="surname" required></label><br>
        <label>Please input your age: <input type="number" name="age" required></label><br>
        <input type="submit" value="Send data">
        <input type="reset" value="Clear data">
    </fieldset>
</form>
</body>
</html>