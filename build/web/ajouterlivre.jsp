<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<c:if test="${session == null }">
    <c:redirect url="index.jsp"></c:redirect>
</c:if>
<sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/bibliotheque" user="root" password=""/>
    <sql:query dataSource="${DS}" var="result"> 
         select * from auteur;
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
        <form  method="get" action="Search">
            
            <div class="input-group p-3">
              <input type="text" class="form-control" aria-label="Text input with dropdown button" name="type" placeholder="Chercher un livre">
              <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="true" aria-required="true" >Rechercher par</button>
              <ul class="dropdown-menu dropdown-menu">
                <li><input type="radio" name="recherche" value="auteur">auteur</li>
                <li><hr class="dropdown-divider"></li>
                <li><input type="radio" name="recherche" value="titre" checked="checked" >titre</li>
                <li><hr class="dropdown-divider"></li>
                <li><input type="radio" name="recherche" value="domaine">domaine</li>
              </ul>
            </div>
          </form>
    </div>
        <div class="position-absolute  end-0 "style="top:1.5em; ">
            <a href="logout.jsp" ><img src="img/logout1.png" class="logout"alt="Se Deconnecter"></a>

        </div>

    <div class="center bg-text">
        
     <div class="box">
        <form method="post" action ="addLivre.jsp">
            <legend>Informations du livre</legend>
            <br>
            <div class="form-group ">
              <label for="exampleFormControlInput1">Titre</label>
              <input type="text" class="form-control" style="width: 25em;" id="exampleFormControlInput1" name="titre" placeholder="titre de livre">
              <label for="exampleFormControlInput1">Nombre de pages</label>
              <input type="text" class="form-control" id="exampleFormControlInput1" name="nbPage" placeholder="NB pages">
              <br>
              <div class="form-group">
                <label for="exampleFormControlSelect1">Domaine</label>
                <select class="form-control"  name="domaine" id="exampleFormControlSelect1">
                  <option>science & fiction</option>
                  <option>Technologie</option>
                  <option>letérrateure</option>
                  <option>Histoire</option>
                  <option>Chemie</option>
                  <option>Physique</option>
                  <option>phylosophie</option>
                </select>
              </div>
              <div class="form-group">
                <label for="exampleFormControlTextarea1">Resume du livre</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="2" name="resume"></textarea>
              </div>
              <div class="form-group">
                <label for="exampleFormControlTextarea1">Auteur de livre</label>
                    <c:choose>
                     <c:when test="${result != null}">
                        <select class="form-select" aria-label="Default select example" name="num">
                                <c:forEach var="row"  items="${result.rows}">
                                    <option value=${row.num}>${row.nom} ${row.prenom}</option>  
                                </c:forEach>
                        </select>
                     </c:when>  
                      <c:otherwise>
                        <c:out value="Pas d'auteur disponible !"/>
                     </c:otherwise>
                    </c:choose>
              </div>
            <p><br><button type="submit" class="btn btn-warning mb-2" style="float: right;">Ajouter livre</button></p>
        </form>
     </div>
    </div>

    
 </body>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>