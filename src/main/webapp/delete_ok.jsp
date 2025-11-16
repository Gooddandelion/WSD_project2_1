<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
  String id = request.getParameter("id");
%>
<html>
<head>
  <title>글 삭제 완료</title>
</head>
<body>
<h2 style="text-align: center;">글 삭제 완료</h2>
<p style="text-align: center;">
  글 번호 **<%= id %>**번이 성공적으로 삭제되었습니다.
</p>
<p style="text-align: center;">
  삭제된 걸 확인할 수 있습니다
</p>
<br>
<div style="text-align: center;">
  <a href="list.jsp">글 목록으로 돌아가기</a>
</div>
</body>
</html>