<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/bibliotheque" user="root" password=""/>
    <sql:update dataSource="${DS}" var="new"> 
         INSERT INTO `auteur`( `nom`, `prenom`, `dateNaissance`) VALUES (?,?,?)
        <sql:param value="${param.nom}" />
        <sql:param value="${param.prenom}" />
        <sql:param value="${param.dateNaissance}" />
    </sql:update>
        <!--c:set scope="session" value="Auteur a été bien ajouté, voire list des auteurs !" var="sm"/-->
  <c:redirect url ="Listauteurs.jsp"/>