<%--
  User: cmetzger4
  Date: 3/18/2016
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
    <head>
        <title>Add Minutes</title>
    </head>
    <body>
        <h1>Add Minutes Exercised</h1>
        <form:form commandName="exercise">
            <table>
                <tr>
                    <td><spring:message code="goal.text" /> </td>
                    <td><form:input path="minutes" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Enter Exercise" />
                    </td>
                </tr>
            </table>
        </form:form>
    </body>
</html>
