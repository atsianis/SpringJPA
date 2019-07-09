<%-- 
    Document   : addEditTrainer
    Created on : 6 Ιουλ 2019, 1:07:50 πμ
    Author     : samsung np350
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>   
        <script type="text/javascript">
            $(document).ready(function() {
                $('.myTable').DataTable();
            });
        </script>
    </head>
    <body>
        <h1>${title} Trainer</h1>
        <form:form method="POST" modelAttribute="trainer" action="/SpringJPA/trainer${what}">
            <table border="1" id="example" class="stripe order-column hover cell-border display myTable" style="width:100%">
                <tr><th>First Name</th><th>Last Name</th><th>Subject</th></tr>
                <tr><td><form:input path="firstName"/></td><td><form:input path="lastName"/></td><td><form:input path="subject"/></td></tr>
            </table>
                <form:input type="hidden" path="trainerId"/>
            <input type="submit" value="${title} Trainer"/>
        </form:form>
    </body>
</html>
