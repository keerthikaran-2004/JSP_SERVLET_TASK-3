<%@ page import="java.util.*,com.example.Student" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Students</title>
</head>
<body>
  <h2>Students</h2>

  <%
    List<Student> students = (List<Student>) request.getAttribute("students");
    if (students == null || students.isEmpty()) {
  %>
      <p>No students yet.</p>
  <%
    } else {
  %>
      <table border="1" cellpadding="6" cellspacing="0">
        <tr>
          <th>ID</th><th>Name</th><th>Age</th>
        </tr>
        <%
          for (Student s : students) {
        %>
            <tr>
              <td><%= s.getId() %></td>
              <td><%= s.getName() %></td>
              <td><%= s.getAge() %></td>
            </tr>
        <%
          }
        %>
      </table>
  <%
    }
  %>

  <p>
<a href="<%= request.getContextPath() %>/addStudent.jsp">Add Student</a>
<a href="<%= request.getContextPath() %>/">Home</a>
  </p>
</body>
</html>
