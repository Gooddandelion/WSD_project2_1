<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>

<html>
<head>
  <title>글 작성 완료</title>
</head>
<body>
<h2>입력 데이터</h2>
<p>제대로 나오는걸 확인할 수 있습니다.</p>

<p>제목: <%= request.getParameter("title") %></p>
<p>작성자: <%= request.getParameter("writer") %></p>
<p>비밀번호: <%= request.getParameter("password") %></p>
<p>카테고리: <%= request.getParameter("category") %></p>
<p>내용:</p>
<pre><%= request.getParameter("content") %></pre>

<br>
<a href="list.jsp">[목록으로 돌아가기]</a>
</body>
</html>