<%-- 
    Document   : addEditTrainer
    Created on : 6 Ιουλ 2019, 1:07:50 πμ
    Author     : samsung np350
--%>

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
                $('#myTable').DataTable();
            });
        </script>
    </head>
    <body>
        <h1>${title} Trainer</h1>
        <form method="POST" modelAttribute="trainer" action="/SpringJPA/trainer${what}">
            <table border="1" id="myTable">
                <tr><td>First Name</td><td>Last Name</td><td>Subject</td></tr>
                <tr><td><input type="text" name="firstName" value="${t.firstName}"></td><td><input type="text" name="lastName" value="${t.lastName}"></td><td><input type="text" name="subject" value="${t.subject}"></td></tr>
            </table>
                <input type="number" hidden=true name="id" value="${t.trainerId}">
            <input type="submit" value="${title} Trainer">
        </form>
    </body>
</html>
