<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   *
   {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   }
   
   .main
   {
    width: 100%;
    height: 100vh;
    background-color: pink;
    display: flex;
    justify-content: space-around;
    align-items: flex-start;
    padding: 1rem 0rem;
   }
   
   a
   {
   padding: 0.3rem 1rem;
   font-size: 1.5rem;
   background-color: red;
   color: white;
   border: 0.1rem solid white;
   border-radius: 10rem;
   text-decoration: none;
   }
   
</style>
</head>
<body>

     <%
    String first = (String) session.getAttribute("First");
    String last = (String) session.getAttribute("Last");

    // Check if 'first' is null or empty
    if (first == null || first.trim().isEmpty()) {
        response.sendRedirect("Login.jsp");
        return; // Stop further processing
    }
%>
     
    <div class="main">
       <h1>Welcome to Your profile <%=
         first
     %> <%=last %></h1>
      
      <a href="bowley">Logout</a>
    </div>
</body>
</html>