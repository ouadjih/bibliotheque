<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:if test="${session == null }">
    <c:redirect url="index.jsp"></c:redirect>
</c:if>

<sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/bibliotheque" user="root" password=""/>
    <sql:query dataSource="${DS}" var="result"> 
         select * from livre;
    </sql:query>
    
         
<!DOCTYPE html>
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
        <a href="Admin.jsp"><button class="btn btn-warning bi bi-arrow-left-square"> Retour</button></a>
    </div>
    <div class="position-absolute top-0 start-50 translate-middle" style="margin-top :2.5em;">
      <form action="resultatRecherche.jsp" method="GET">
        <div class="input-group">
          <input id="MyQuery" type="text" class="form-control" aria-label="Text input with dropdown button" name="q" placeholder='Rechercher'>
          <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="true">Rechercher par</button>
          <ul class="dropdown-menu">
            <c:set var="items">Auteur,Titre,Domaine</c:set>
            <c:forTokens items="${items}" delims="," var="choice">
              <c:if test="${choice != 'Auteur'}">
                <li><hr class="dropdown-divider"></li>
              </c:if>
              <li>
                <input id="${choice}" name="type" type="radio" value="${choice}">
                <label for="${choice}"> ${choice}</label>
              </li>
            </c:forTokens>
          </ul>
        </div>
      </form>
    </div>
    <div class="position-absolute  end-0 "style="top:1.5em; ">
        <a href="logout.jsp" ><img src="img/logout1.png" class="logout"alt="Se Deconnecter"></a>
    </div>

    <div class="center bg-text">      
        <div class="box">
            <legend>Liste des livres</legend><br><br>
            <table class="table table-bordered table-responsive " style="width: 40em; overflow: hidden; background-color:rgba(160, 164, 165, 0.13);">
                    <thead>
                     <tr>
                        <th>issn</th>
                        <th>titre</th>
                        <th>resume</th>
                        <th>nbpage</th>
                        <th>domaine</th>
                        <th>Auteur</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                         <c:when test="${result != null}">
                            <c:forEach var="row" items="${result.rows}">
                                <sql:query dataSource="${DS}" var="rr"> 
                                    select nom from auteur where num = '${row.num}';
                                </sql:query>
                                 <tr>
                                    <td>${row.issn}</td>

                                    <td>${row.titre}</td>

                                    <td>${row.resume}</td>

                                    <td>${row.nbpage}</td>

                                    <td>${row.domaine}</td>
                                    
                                    <td>Auteur</td>
                                </tr>
                            </c:forEach>
                         </c:when>
                         <c:otherwise>
                            <c:out value="Pas de livre disponible !"/>
                         </c:otherwise>
                        </c:choose>
                    </tbody>
            </table>
        </div>
    </div>
</body>
  <script>
var auteur = document.getElementById("Auteur");
var livre = document.getElementById("Livre");
var domaine = document.getElementById("Domaine");
var input = document.getElementById("MyQuery");

auteur.onclick = function() {
  input.placeholder = "Entrer le num d'auteur";
}

livre.onclick = function() {
  input.placeholder = "Entrer le titre de livre";
}

domaine.onclick = function() {
  input.placeholder = "Entrer le domaine";
}
  </script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
