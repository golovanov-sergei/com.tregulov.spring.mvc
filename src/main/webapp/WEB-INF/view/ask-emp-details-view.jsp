<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h2>Dear Employee, please enter your details</h2>
<br>
<br>
<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <br>
    <br>
    Surname <form:input path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>
    Department <form:select path="department">
    <%--    <form:option value="Information Technology" label="IT"/>--%>
    <%--    <form:option value="Human resources" label="HR"/>--%>
    <%--    <form:option value="Sales " label="Sales"/>--%>
    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>
    Pick up a car
    <%--    <form:radiobutton path="carBrand" value="BMW" label="BMW"/>--%>
    <%--    <form:radiobutton path="carBrand" value="VW" label="VW"/>--%>
    <%--    <form:radiobutton path="carBrand" value="Audi" label="Audi"/>--%>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
    Foreign language(s):
<%--    <form:checkbox path="languages" label="EN" value="English"/>--%>
<%--    <form:checkbox path="languages" label="DE" value="Deutch"/>--%>
<%--    <form:checkbox path="languages" label="FR" value="Francais"/>--%>
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    <input type="submit" value="OK">
</form:form>
</body>
</html>