<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/bibliotheque" user="root" password=""/>
  <sql:query dataSource="${DS}" var="resultat"> 
    SELECT * FROM livre;
  </sql:query>
<!--c:set scope="session" value="Auteur a été bien ajouté, voire list des auteurs !" var="sm"/-->
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  </head>
  <body>
    <div class="back position-absolute start-0" style="top:1.5em;">
      <a href="index.jsp"><button class="btn btn-warning bi bi-arrow-left-square"> Retour</button></a>
    </div>
    <div class="position-absolute top-0 start-50 translate-middle" style="margin-top :2.5em;">
      <form action="resultatRecherche.jsp" method="GET">
        <c:out value="<p>Chercher dans la bibliotheque</p>" escapeXml="false" />
        <div class="input-group">
          <input type="text" class="form-control" aria-label="Text input with dropdown button" name="recherche">
          <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="true">Rechercher par</button>
          <ul class="dropdown-menu">
            <c:set var="items">Auteur,Titre,Domaine</c:set>
            <c:forTokens items="${items}" delims="," var="letter">
            <c:if test="${letter != 'Auteur'}">
            <li><hr class="dropdown-divider"></li>
            </c:if>
            <li><input type="radio" name="type" value="${letter}"> ${letter}</li>
            </c:forTokens>
          </ul>
        </div>
      </form>
    </div>
    <div class="center bg-text">
      <div class="box">
        <legend>Resultat de recherche</legend>
        <br><br>
        <table class="table table-bordered table-responsive " style="width: 40em; overflow: hidden; background-color:rgba(160, 164, 165, 0.13);">
          <c:choose>
            <c:when test="${resultat.rows == null}">
              <tr>Pas de livre disponible</tr>
            </c:when>
            <c:otherwise>
              <tr>
                <th>ISSN</th>
                <th>Titre</th>
                <th>Nombre de pages</th>
                <th>Domaine</th>
              </tr>
              <c:forEach var="row" items="${resultat.rows}">
                <tr>
                  <td><c:out value="${row.issn}"/></td>
                  <td><c:out value="${row.titre}"/></td>
                  <td><c:out value="${row.nbpage}"/></td>
                  <td><c:out value="${row.domaine}"/></td>
                </tr>
              </c:forEach>
            </c:otherwise>
          </c:choose>
        </table>
      </div>
    </div>
    </div>
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>
