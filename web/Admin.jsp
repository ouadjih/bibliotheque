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
        <form  method="get" action="Search">
            
            <div class="input-group  p-3">
              <input type="text" class="form-control" aria-label="Text input with dropdown button" name="type" placeholder="Chercher un livre">
              <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="true" aria-required="true" >Rechercher par</button>
              <ul class="dropdown-menu dropdown-menu">
                <li><input type="radio" name="recherche" value="auteur">auteur</li>
                <li><hr class="dropdown-divider"></li>
                <li><input type="radio" name="recherche" value="titre" >titre</li>
                <li><hr class="dropdown-divider"></li>
                <li><input type="radio" name="recherche" value="domaine">domaine</li>
              </ul>
            </div>
          </form>
    </div>
    <div class="gauche bg-text "> 
        <div class="position-absolute  end-0 "style="top:1em; ">
            <a href="logout" ><img src="img/logout1.png" class="logout"alt="Se Deconnecter"></a>
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
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>

</html>