<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>

<html>
<head>
    <title>글 수정 완료</title>
</head>
<body>
<h2>[실습] edit_ok.jsp에서 받아온 데이터</h2>
<p>(DB를 사용하지 않으므로, 실제 저장(UPDATE)은 하지 않고 출력만 합니다.)</p>

<p>수정할 글 ID: <%= request.getParameter("id") %></p>
<hr>
<p>제목: <%= request.getParameter("title") %></p>
<p>작성자: <%= request.getParameter("writer") %></p>
<p>비밀번호: <%= request.getParameter("password") %></p>
<p>내용:</p>
<pre><%= request.getParameter("content") %></pre>

<br>
<a href="view.jsp?id=<%= request.getParameter("id") %>">[상세보기로 돌아가기]</a>
<a href="list.jsp">[목록으로 돌아가기]</a>
</body>
</html>