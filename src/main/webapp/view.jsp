<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String id = request.getParameter("id");

    String mockTitle = "과제 제출합니다 (ID: " + id + ")";
    String mockWriter = "박헌일";
    String mockContent = "만점 부탁드려요\n\n" +
            "글 번호 " + id + "번을 보고 계십니다.";
%>
<html>
<head>
    <title>글 상세보기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<div class="container mt-5" style="max-width: 800px;">

    <div class="card">
        <div class="card-header">
            <h3><%= mockTitle %></h3>
            <div class="text-muted small">
                작성자: <%= mockWriter %>
            </div>
        </div>
        <div class="card-body">
            <p style="white-space: pre-wrap;"><%= mockContent %></p>
        </div>
    </div>

    <div class="mt-4 d-flex justify-content-between">
        <a href="list.jsp" class="btn btn-secondary">목록</a>
        <div>
            <a href="edit.jsp?id=<%= id %>" class="btn btn-outline-primary">수정</a>
            <a href="delete_ok.jsp?id=<%= id %>" class="btn btn-outline-danger">삭제</a>
        </div>
    </div>
</div>

</body>
</html>