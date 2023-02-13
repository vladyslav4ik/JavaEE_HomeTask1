<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Input your data</title>
    <style>
        fieldset {
            width: 20%;
        }

        legend {
            width: auto;
            margin-left: auto;
            margin-right: auto;
            background-color: #000;
            color: #fff;
        }

        label {
            margin-left: 20%;
        }

        input {
            width: auto;
            margin-left: 15%;
        }

        .surname {
            width: auto;
            margin-left: 15%;
        }

        .submit {
            margin-left: 10%;
        }

        .reset {
            margin-left: 20%;
        }

        .submit, .reset {
            margin-top: 5%;
        }
    </style>
</head>
<body>
<form method="post" action="form-servlet">
    <fieldset>
        <legend>Please input your personal data</legend>
        <label>Please input your name: <input type="text" name="name" required></label><br>
        <label class="surname">Please input your surname: <input type="text" name="surname" required></label><br>
        <label>Please input your age: <input type="number" name="age" required></label><br>
        <button type="submit" class="submit">Send data</button>
        <button type="reset" class="reset">Clear data</button>
        <%--        <input type="submit" value="Send data">--%>
        <%--        <input type="reset" value="Clear data">--%>
    </fieldset>
</form>
</body>
</html>