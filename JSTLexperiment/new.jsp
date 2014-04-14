<!doctype html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<head>

</head>
<body>
<form name="loginForm" action="new.jsp" method="post">
Username: <input name="username" type="text" size=20/>
Password: <input name="password" type="password" size=20 />
<input type="submit" value="submit">
</form>



<%
String happy = "happy";
pageContext.setAttribute("happy", happy);
%>

<c:out value="${happy}" />

<c:set var="salary" value="${2000*2}"/>
<c:out value="${salary}" />

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/learnfla_testdb"
     user="learnfla_aplia"  password="q23rp98U"/>
	 
<sql:update dataSource="${snapshot}" var="count">
   ALTER TABLE table1 MODIFY column1 CHAR(20);
</sql:update>

<sql:update dataSource="${snapshot}" var="count">
   ALTER TABLE table1 MODIFY column2 CHAR(20);
</sql:update>

<sql:update dataSource="${snapshot}" var="count">
	TRUNCATE table1;
</sql:update>
<!--http://learningflare.com/JSTLexperiment/new.jsp
<c:if test="${param.username != null && param.password != null}">

	<sql:update dataSource="${snapshot}" var="count">
		INSERT INTO table1 VALUES ('${param.username}', '${param.password}');
	</sql:update>

</c:if>-->

<sql:query dataSource="${snapshot}" var="result">
   SELECT * from table1;
</sql:query>

<table border="1" width="100%">
<tr>
<th>Emp ID</th>
<th>First Name</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.column1}"/></td>
<td><c:out value="${row.column2}"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>