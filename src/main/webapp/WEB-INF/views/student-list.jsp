<%@ page isELIgnored = "false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Student-List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
     <style>
    .data {
      font-size: large;
      color: white;
      font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    }
  </style>
</head>

<body>
  <div class="container p-3 my-3 bg-primary text-white">
    <h2 style="text-align:center;">Welcome to Great Learning College</h2>
    <h2 style="text-align:center;">Annual Fest 2022</h2>
    <hr style="background-color:white; height: 2px;">

    <p>
      <a class="btn btn-outline-warning btn-lg" href="students/list">List Students</a>
      <a class="btn btn-outline-warning btn-lg" href="showStudentForm">Add Student</a>
    </p>
    <hr style="background-color:white; height: 2px;">
    <div class="container">
      <table class="table data">
        <thead>
          <tr>
            <th>S.No</th>
            <th>Name</th>
            <th>Department</th>
            <th>Country</th>
            <th>Action</th>
          </tr>
        </thead>
        <c:forEach  var="student" items="${students}" varStatus="c">
        	<tbody>
          <tr>
            <td>${c.count}</td>
            <td>${student.name}</td>
            <td>${student.department}</td>
            <td>${student.country}</td>
            <td>
              <a class="btn btn-warning" href="update?id=${student.id}">Update</a> |
              <a class="btn btn-danger" href="delete?id=${student.id}">Delete</a>
            </td>
          </tr>
        </tbody>
        </c:forEach>
      </table>
    </div>
  </div>
</body>

</html>