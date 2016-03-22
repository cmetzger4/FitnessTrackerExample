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
        <script type="text/javascript" src="/js/jquery-2.2.2.min.js"></script>
        <script type="text/javascript">
            $(document).ready(
                    function() {
                        $.getJSON('<spring:url value="activities.json" />',
                                {
                                    ajax : 'true'
                                }, function(data){
                                    var html = '<option value="">--Please select one--</ooption>';
                                    var len = data.length;
                                    for (var i = 0; i < len; i++) {
                                        html += '<option value="' + data [i].desc + '">'
                                        + data[i].desc + '</option>';
                                    }
                                    html += '</option>';

                                    $('#activities').html(html);
                                });
                    });
        </script>

    </head>
    <body>
        <h1>Add Minutes Exercised</h1>

        Language : <a href="?language=en">English</a> | <a href="?language=es">Spanish</a>
        <form:form commandName="exercise">
            <table>
                <tr>
                    <td><spring:message code="goal.text" /></td>
                    <td><form:input path="minutes" /></td>
                    <td>
                        <form:select path="activity" id="activities" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <input type="submit" value="Enter Exercise" />
                    </td>
                </tr>
            </table>
        </form:form>

        <h1>Our goal for today is: ${goal.minutes}</h1>
    </body>
</html>
