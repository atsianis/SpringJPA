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
                $('.myTable').DataTable();
            });
        </script>
    </head>
    <body>

        <table border="1" id="example" class="stripe order-column hover cell-border display myTable" style="width:100%">
            <tr><th>First Name</th><th>Last Name</th><th>Subject</th><th>Update</th><th>Delete</th></tr>
            <c:forEach var="t" items="${trainers}">
                <tr><td>${t.firstName}</td><td>${t.lastName}</td><td>${t.subject}</td><td><a href="/SpringJPA/trainerupdate/${t.trainerId}">Edit</a></td><td><a href="/SpringJPA/trainerdelete/${t.trainerId}">Delete</a></td></tr>
            </c:forEach>
        </table>
        <p>${message}</p><br>
        <p><a href="/SpringJPA">Home Page</a>
    </body>
</html>
