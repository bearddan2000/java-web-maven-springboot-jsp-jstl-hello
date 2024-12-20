<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver"
  url="jdbc:mysql://db/animal" user="maria" password="pass"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring web example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <span>Hello World</span>
    </div>
    <div class="container">
        <% out.print("Hello from jsp"); %>
    </div>
    <div class="container">
      <sql:query dataSource="${dataSource}" var="result">
        SELECT * from dog;
      </sql:query>
      <c:forEach var = "i" items="${result.rows}">
          <c:out value = "${i}"/>
      </c:forEach>
    </div>
    <div class="container" id="greet"/>  
    <div class="container">
      <footer>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      </footer>
    </div>
    <script src="js/hello.js"></script>
</body>
</html>