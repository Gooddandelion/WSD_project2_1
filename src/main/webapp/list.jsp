<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<%
  ArrayList<HashMap<String, String>> boardList = new ArrayList<>();

  HashMap<String, String> post1 = new HashMap<>();
  post1.put("id", "1");
  post1.put("title", "11주차 피곤하네요");
  post1.put("writer", "박헌일");
  post1.put("createdAt", "2025-11-15");
  post1.put("views", "10"); // 항목 5개 이상 (조회수 추가)
  boardList.add(post1);

  HashMap<String, String> post2 = new HashMap<>();
  post2.put("id", "2");
  post2.put("title", "벌써 기말이 한달밖에,,");
  post2.put("writer", "조우진");
  post2.put("createdAt", "2025-11-16");
  post2.put("views", "22");
  boardList.add(post2);

  HashMap<String, String> post3 = new HashMap<>();
  post3.put("id", "3");
  post3.put("title", "취직 언제 하죠?");
  post3.put("writer", "무직백수");
  post3.put("createdAt", "2025-11-17");
  post3.put("views", "5");
  boardList.add(post3);
%>

<html>
<head>
  <title>게시판 목록</title>
  <style>
    table { width: 80%; border-collapse: collapse; margin: 20px auto; }
    th, td { border: 1px solid #ddd; padding: 8px; text-align: center; }
    th { background-color: #f2f2f2; }
    .btn-write { display: block; width: 100px; margin: 20px auto; text-align: center; padding: 10px; background-color: #007bff; color: white; text-decoration: none; border-radius: 5px; }
  </style>
</head>
<body>

<h2 style="text-align: center;">JSP 게시판 (Mock Data)</h2>

<table>
  <thead>
  <tr>
    <th>글번호 (id)</th>
    <th>제목 (title)</th>
    <th>작성자 (writer)</th>
    <th>작성일 (createdAt)</th>
    <th>조회수 (views)</th>
  </tr>
  </thead>
  <tbody>
  <% for (HashMap<String, String> post : boardList) { %>
  <tr>
    <td><%= post.get("id") %></td>

    <td>
      <a href="view.jsp?id=<%= post.get("id") %>">
        <%= post.get("title") %>
      </a>
    </td>

    <td><%= post.get("writer") %></td>
    <td><%= post.get("createdAt") %></td>
    <td><%= post.get("views") %></td>
  </tr>
  <% } %>
  </tbody>
</table>

<a href="write.html" class="btn-write">글쓰기</a>

</body>
</html>