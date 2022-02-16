<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- mettre user name et pass word dans des variable à verifier plutard -->

<c:set var="user" value="${param.user}" scope="request" />
<c:set var="pass" value="${param.pass}" scope="request" />
<c:choose>
    <c:when test="${user  == 'admin'&& pass == 'admin'} ">
        <!-- rediriger vers admin.jsp  ++ CREATION  de session -->
          <c:redirect url ="Admin.jsp"/>
    </c:when>
    <c:otherwise>
       <!-- rediriger vers index.jsp ++ DESTRUCTION de la session -->
         <c:redirect url ="index.jsp"/>
    </c:otherwise>
    
</c:choose>
