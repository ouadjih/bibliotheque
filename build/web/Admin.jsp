<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${session == null }">
  <c:redirect url="index.jsp"></c:redirect>
</c:if>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  </head>
  <body>
    <div id="grand-div">
      <div class="position-absolute top-0 start-50 translate-middle" style="margin-top :2em;">
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
      <div class="gauche bg-text "> 
        <div class="position-absolute  end-0 "style="top:1em; ">
          <a href="logout.jsp" ><img src="img/logout1.png" class="logout"alt="Se Deconnecter"></a>
        </div>

        <div class="card w-50 text-light bg-light mx-auto" >
          <img src="img/addbook.jpg" class="card-img-top" alt="Gerer les livres">
          <div class="card-body text-dark" id="card" >
            <p class="card-text">
              <div class="row">
                <div class="col">
                  <a href="ajouterlivre.jsp">
                    <button class="btn btn-warning bi bi-plus-square"> Crée Livre</button>
                  </a>
                </div>
                <div class="col">
                  <a href="Listlivres.jsp">
                    <button class="btn btn-warning bi bi-list"> Liste Livre</button>
                  </a>
                </div>
              </div>
            </p>
          </div>
        </div>
      </div>
      <div class="droit bg-text">
        <div class="card w-50  text-light bg-light mx-auto" >
          <img src="img/writer.jpg" class="card-img-top" alt="Gerer les livres">
          <div class="card-body text-dark" id="card">  
            <p class="card-text">
              <div class="row">
                <div class="col">
                  <a href="ajouterAuteur.jsp">
                    <button class="btn btn-warning bi bi-plus-square"> Crée auteur</button>
                  </a>
                </div>
                <div class="col">
                  <a href="Listauteurs.jsp">
                    <button class="btn btn-warning bilistau bi-list"> Liste auteur</button>
                  </a>
                </div>
              </div>
            </p>
          </div>
        </div>      
      </div> 
    </div>
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
