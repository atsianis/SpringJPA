<%-- 
    Document   : trainers
    Created on : 5 Ιουλ 2019, 12:06:17 μμ
    Author     : samsung np350
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.mycompany.springjpa.entities.Trainer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainers</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>   
        <script type="text/javascript">
             $(document).ready(function() {
                $('#trainers').DataTable();
            });
        </script>
    </head>
    <body>

        <table border="1" id="trainers">
            <tr><td>First Name</td><td>Last Name</td><td>Subject</td></tr>
            <c:forEach var="t" items="${trainers}">
                <tr><td>${t.firstName}</td><td>${t.lastName}</td><td>${t.subject}</td><td><a href="trainerupdate/${t.trainerId}">Edit</a></td><td><a href="trainerdelete/${t.trainerId}">Delete</a></td></tr>
            </c:forEach>
        </table>
        <p>${message}</p>
    </body>
</html>
