<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
  <title>글 작성 완료</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<div class="container mt-5" style="max-width: 800px;">
  <div class="card">
    <div class="card-header">
      <h3>글 작성 완료</h3>
    </div>
    <div class="card-body">

      <div class="alert alert-success" role="alert">
        새 글이 성공적으로 등록되었습니다!
      </div>


      <hr>

      <h5>등록된 내용</h5>
      <ul class="list-group list-group-flush">
        <li class="list-group-item">
          <strong>제목:</strong> <%= request.getParameter("title") %>
        </li>
        <li class="list-group-item">
          <strong>작성자:</strong> <%= request.getParameter("writer") %>
        </li>
        <li class="list-group-item">
          <strong>카테고리:</strong> <%= request.getParameter("category") %>
        </li>
        <li class="list-group-item">
          <strong>내용:</strong>
          <pre class="mb-0"><%= request.getParameter("content") %></pre>
        </li>
      </ul>

      <div class="mt-4 text-center">
        <a href="list.jsp" class="btn btn-primary">목록으로 돌아가기</a>
      </div>
    </div>
  </div>
</div>

</body>
</html>