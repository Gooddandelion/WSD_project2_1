<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>

<html>
<head>
  <title>글 작성 완료</title>
</head>
<body>
<h2>[실습] write_ok.jsp에서 받아온 데이터</h2>
<p>(DB를 사용하지 않으므로, 실제 저장(INSERT)은 하지 않고 출력만 합니다.)</p>

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