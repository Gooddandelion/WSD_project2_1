<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String id = request.getParameter("id");

  String mockTitle = "수정할 제목 (ID: " + id + ")";
  String mockWriter = "수정할 작성자";
  String mockContent = "수정할 글 내용입니다.";
%>
<html>
<head>
  <meta charset="UTF-8">
  <title>글 수정</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<div class="container mt-5" style="max-width: 800px;">
  <h2 class="text-center mb-4">글 수정 (ID: <%= id %>)</h2>

  <form action="edit_ok.jsp" method="post">
    <input type="hidden" name="id" value="<%= id %>">

    <div class="mb-3">
      <label for="title" class="form-label">제목</label>
      <input type="text" class="form-control" id="title" name="title" value="<%= mockTitle %>">
    </div>
    <div class="mb-3">
      <label for="writer" class="form-label">작성자</label>
      <input type="text" class="form-control" id="writer" name="writer" value="<%= mockWriter %>">
    </div>
    <div class="mb-3">
      <label for="password" class="form-label">비밀번호</label>
      <input type="password" class="form-control" id="password" name="password" placeholder="수정/삭제 시 비밀번호 입력">
    </div>
    <div class="mb-3">
      <label for="content" class="form-label">내용</label>
      <textarea class="form-control" id="content" name="content" rows="10"><%= mockContent %></textarea>
    </div>

    <div class="d-flex justify-content-between">
      <a href="view.jsp?id=<%= id %>" class="btn btn-secondary">취소</a>
      <button type="submit" class="btn btn-primary">수정 완료</button>
    </div>
  </form>
</div>

</body>
</html>