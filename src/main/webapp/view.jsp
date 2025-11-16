<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String id = request.getParameter("id");

    String mockTitle = "제목 예시 (ID: " + id + ")";
    String mockWriter = "작성자 예시";
    String mockContent = "여기는 DB에서 가져온 글 내용이 표시됩니다.\n\n" +
            "글 번호 " + id + "번을 보고 계십니다.";
%>
<html>
<head>
    <title>글 상세보기</title>
    <style>
        .container { width: 60%; margin: 20px auto; padding: 20px; border: 1px solid #ccc; }
        .btn-group { margin-top: 20px; }
        .btn-group a { margin-right: 10px; padding: 5px 10px; background-color: #eee; border: 1px solid #bbb; text-decoration: none; color: black; }
    </style>
</head>
<body>
<div class="container">
    <h2><%= mockTitle %></h2>
    <p><strong>작성자:</strong> <%= mockWriter %></p>
    <hr>
    <pre><%= mockContent %></pre>

    <div class="btn-group">
        <a href="edit.jsp?id=<%= id %>">수정 (edit)</a>

        <a href="list.jsp" onclick="alert('삭제(delete) 버튼 링크 연결됨 (Mock)'); return false;">삭제 (delete)</a>
        <a href="list.jsp">목록으로</a>
    </div>
</div>
</body>
</html>