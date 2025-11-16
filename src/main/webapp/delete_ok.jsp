<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
  String id = request.getParameter("id");
%>
<html>
<head>
  <title>글 삭제 완료</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<div class="container mt-5" style="max-width: 600px;">
  <div class="card text-center">
    <div class="card-body">
      <div class="alert alert-success" role="alert">
        글 삭제 완료!
      </div>

      <p class="card-text">
        글 번호 <strong><%= id %></strong>번이 성공적으로 삭제되었습니다.<br>
      </p>

      <a href="list.jsp" class="btn btn-primary">글 목록으로 돌아가기</a>
    </div>
  </div>
</div>

</body>
</html>