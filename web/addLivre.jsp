<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/bibliotheque" user="root" password=""/>
<sql:update dataSource="${DS}" var="new"> 
    INSERT INTO `livre`(`titre`, `resume`, `nbPage`, `domaine`, `num`)VALUES(?,?,?,?,?)
    <sql:param value="${param.titre}" />
    <sql:param value="${param.resume}" />
    <sql:param value="${param.nbPage}" />
    <sql:param value="${param.domaine}" />
    <sql:param value="${param.num}" />
</sql:update>
    <!--c:set scope="session" value="Livre a été bien ajouté, voire list des Livre !" var="sm"/-->
  <c:redirect url ="Listlivres.jsp"/>