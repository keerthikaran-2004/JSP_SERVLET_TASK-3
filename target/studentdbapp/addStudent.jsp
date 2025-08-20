<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add Student</title>
</head>
<body>
  <h2>Add Student</h2>

  <%
    String msg = (String) session.getAttribute("msg");
    if (msg != null) {
  %>
      <p style="color:red;"><%= msg %></p>
  <%
      session.removeAttribute("msg");
    }
  %>

<form method="post" action="<%= request.getContextPath() %>/students/add">
    <label>Name: <input type="text" name="name" required></label><br><br>
    <label>Age: <input type="number" name="age" min="1" required></label><br><br>
    <button type="submit">Save</button>
  </form>

<a href="<%= request.getContextPath() %>/">Home</a>
</body>
</html>
