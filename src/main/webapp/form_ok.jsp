<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% request.setCharacterEncoding("UTF-8"); %>

<html>
<head>
    <title>폼 전송 결과</title>
</head>
<body>
<h2>개인 페이지 </h2>


<p>아이디: <%= request.getParameter("user_id") %></p>
<p>비밀번호: <%= request.getParameter("user_pw") %></p>
<p>성별: <%= request.getParameter("gender") %></p>

<%
    String[] hobbies = request.getParameterValues("hobby");
    String hobbyStr = "";
    if (hobbies != null && hobbies.length > 0) {
        hobbyStr = String.join(", ", hobbies);
    } else {
        hobbyStr = "선택 안 함";
    }
%>
<p>관심사: <%= hobbyStr %></p>

<p>혈액형: <%= request.getParameter("blood_type") %></p>

<p>한줄 소개:</p>
<pre><%= request.getParameter("memo") %></pre>

<br>
<a href="form.html">[입력 폼으로 돌아가기]</a>

</body>
</html>