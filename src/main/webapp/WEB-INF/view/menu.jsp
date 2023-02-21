<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<style>input[type="submit"] {
  font-size: .9em;
  color: #fff;
  background: #0092ca;
  outline: none;
  border: 1px solid rgb(0, 128, 255);
  cursor: pointer;
  padding: 0.5em;
  -webkit-appearance: none;
  width: 150px;
  margin: 2em 0;
  letter-spacing: 1px;
  border-radius: 5px;
  box-shadow: 1px 1px #ffffff;

}

input[type="submit"]:hover {
  -webkit-transition: .5s all;
  -moz-transition: .5s all;
  -o-transition: .5s all;
  -ms-transition: .5s all;
  transition: .5s all;
  background: #06b0f1;
}
#mohsin{
	margin-left:31%;
	
}

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<i class="fa fa-clock-o" style="font-size:30px;color:white"></i> <!-- icon of time -->
			<%=new Date() %> <!-- expression tag for time -->
<div id="mohsin">
    <a href="SavedList"><input type="submit"  value="AllRegistration"/></a>
    <a href="saveRegistration"><input type="submit"  value="NewRegistration"/></a>
    <a href="Logout"><input type="submit"  value="Logout"/></a>
 </div>  
</body>
</html>