<%-- 
    Document   : index
    Created on : 13 févr. 2022, 14:17:16
    Author     : Pavilion, Amine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:out value="<p> hello ouadjih </p>" escapeXml="false" />
        <c:set var="jEE" value="jave Entreprise edition" scope="request" />
        <c:out value="${jEE}" />
      
        <c:set var="a" value="${5}" scope="request" />
        <c:set var="b" value="${-6}" scope="request" />
        <c:set var="c" value="${a+b}" scope="request" />
        <c:choose>
            <c:when test="${b>0}">
                <c:out value="${a}+${b}=${c}" />
            </c:when>
            <c:otherwise>
                 <c:out value="${a}${b}=${c}" />
            </c:otherwise>
        </c:choose>

        <c:forEach var="i" begin="0" end="10" step="2">
            <c:out value="you can do it X ${i} ."/>
        </c:forEach>

        <c:forEach var="i" begin="0" end="10" step="2">
            <c:out value="you can do it Y ${i} ."/>
        </c:forEach>
    </body>
</html>
