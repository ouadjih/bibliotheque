<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- mettre user name et pass word dans des variable à verifier plutard -->

<c:set var="user" value="${param.user}" scope="request" />
<c:set var="pass" value="${param.user}" scope="request" />
<c:choose>
    <c:when test="${user} == 'admin' && ${pass} == 'admin' ">
        <!-- rediriger vers admin.jsp  ++ CREATION  de session -->
        <c:out value="you can do it X  ."/>
    </c:when>
    <c:otherwise>
       <!-- rediriger vers index.jsp ++ detruire la session -->
       <c:out value="you can do it y  ."/>
    </c:otherwise>
    
</c:choose>
