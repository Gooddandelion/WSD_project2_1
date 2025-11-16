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
  <style>
    form { width: 50%; margin: 20px auto; padding: 20px; border: 1px solid #ccc; border-radius: 8px; }
    p { margin-bottom: 15px; }
    label { display: inline-block; width: 100px; }
    input[type=text], textarea { width: calc(100% - 110px); }
    textarea { vertical-align: top; }
    .btn-group { text-align: center; }
  </style>
</head>
<body>

<h2 style="text-align: center;">글 수정 (ID: <%= id %>)</h2>

<form action="edit_ok.jsp" method="post">

  <input type="hidden" name="id" value="<%= id %>">

  <p>
    <label for="title">제목:</label>
    <input type="text" id="title" name="title" value="<%= mockTitle %>">
  </p>
  <p>
    <label for="writer">작성자:</label>
    <input type="text" id="writer" name="writer" value="<%= mockWriter %>">
  </p>
  <p>
    <label for="password">비밀번호:</label>
    <input type="password" id="password" name="password" placeholder="수정/삭제 시 비밀번호 입력">
  </p>
  <p>
    <label for="content">내용:</label>
    <textarea id="content" name="content" rows="10"><%= mockContent %></textarea>
  </p>

  <div class="btn-group">
    <input type="submit" value="수정 완료">
    <a href="view.jsp?id=<%= id %>"><input type="button" value="취소 (상세보기로)"></a>
  </div>
</form>

</body>
</html>