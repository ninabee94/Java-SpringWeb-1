<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Insert title here</title>
  <link href="${pageContext.request.contextPath}/resources/css/new.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath}/resources/js/new.js"></script>   
</head>
<body>

  <h3>
      <a href="page1.html">Click to go to Page1... </a>
  </h3>  
  
  <input type="button" onclick="alertme()" value="Click Me" /> <br><br>
  <img src="${pageContext.request.contextPath}/resources/images/new.png" /> 

</body>
</html>