<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student App</title>
</head>
<body>
  <h2>Student App</h2>
  <!-- <p><a href="${pageContext.request.contextPath}/addStudent.jsp">Add Student</a></p>
  <p><a href="${pageContext.request.contextPath}/students">View Students</a></p> -->

<button type="button" id="btnJs">View</button>
<button type="button" id="btnJsadd">Add</button>

  <script>
    document.getElementById('btnJs').addEventListener('click', function () {
      window.location.href = '<%= request.getContextPath() %>/students';
    });

    document.getElementById('btnJsadd').addEventListener('click', function () {
      window.location.href = '<%= request.getContextPath() %>/addStudent.jsp';
    });
  </script>
</body>
</html>
