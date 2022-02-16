<%-- 
    Document   : index
    Created on : 9 juil. 2021, 17:25:40
    Author     : Ouadjih
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <style>  
        .bg-text {
          background-color: rgb(0,0,0); /* Fallback color */
          background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
          color: white;
          font-weight: bold;
          border: 3px solid #f1f1f1;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

   
<body>
  
  <div class="grand-div">
    <div class="gauche bg-text">
        <form method="get" action="Search">
        <p>Chercher dans la bibliotheque</p>
        <div class="input-group ">
          <input type="text" class="form-control" aria-label="Text input with dropdown button" name="recherche">
          <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="true" >Rechercher par</button>
          <ul class="dropdown-menu dropdown-menu">
            <li><input type="radio" name="type" value="auteur">auteur</li>
            <li><hr class="dropdown-divider"></li>
            <li><input type="radio" name="type" value="titre" checked="checked" >titre</li>
            <li><hr class="dropdown-divider"></li>
            <li><input type="radio" name="type" value="domaine">domaine</li>
          </ul>
        </div>
      </form>
    </div>
    <div class="droit bg-text">
      <form action="login.jsp" method="POST">
        <p>Se Connecter</p>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <span class="input-group-text bg-warning" id="basic-addon1">Username</span>
          </div>
          <input type="text" class="form-control" placeholder="Type..." aria-label="Username" aria-describedby="basic-addon1" name="user">
        </div>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <span class="input-group-text bg-warning" id="basic-addon1">Password</span>
          </div>
          <input type="password" class="form-control" placeholder="Type..." aria-label="Username" aria-describedby="basic-addon1" name="pass">
        </div>
        <button type="submit" class="btn btn-light mb-1 " id="button" style="align-items: center;">Login</button>
        </form>
    </div>
    </div>
 </body>
 <script>
        
 </script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
