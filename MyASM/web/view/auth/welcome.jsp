
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="width: 90%;             
    max-width: 1200px;       
    margin: 20px auto;       
    padding: 20px;          
    border: 2px solid #000; 
    border-radius: 5px;     
    background-color: #f9f9f9; 
    min-height: 80vh;">
        <h1 style="text-align: center">Hello ${sessionScope.user.displayname}</h1>
        You need to report to ${sessionScope.user.e.manager.name}
        Your Direct Staffs: <br/>
        <c:forEach items="${sessionScope.user.e.directstaffs}" var="s" >
            ${s.name} <br/>
         </c:forEach>
            
        Your All Staffs: <br/>
        <c:forEach items="${sessionScope.user.e.staffs}" var="s" >
            ${s.name} <br/>
         </c:forEach>    
            <a href="requestList.jsp" style="display: block;        
    width: 100px;         
    padding: 10px;         
    margin: 10px auto;     
    background-color: #4CAF50; 
    color: white;       
    text-align: center;     
    text-decoration: none; 
    border: none;      
    border-radius: 5px;     
    cursor: pointer;" class="button">Create</a>
    </body>
</html>
