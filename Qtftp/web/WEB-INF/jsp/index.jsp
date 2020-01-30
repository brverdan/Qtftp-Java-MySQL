<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel ="stylesheet" type="text/css" media="screen" href="resources/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Quem tem Fome Tem Pressa</title>
</head>
<body>
    <!--NAVBAR-->
    <nav class="navbar navbar-light bg-light">
        <a class="navbar-brand" href="index">
          <img id="foto" src="resources/fotos/logoQTFTP.png" width="90" height="50" alt="">
        </a>
        <div>
          <a href="opcao" id="texto" target="_self">Cadastre-se</a>  
          <button onclick="window.location.href='opcaoLogin';" id="btnEntrar">Entrar</button>
        </div>
        
      </nav>
      <br>
      <br>
      <!--About Us-->
      <div id="slide">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="resources/fotos/O_que_e_o_QTFTP_1.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="resources/fotos/equipe_qtftp.jpg" class="d-block w-100" alt="...">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <br>
      <br>
      <!--Fale Conosco-->
      <div class="cards">
        <div class="card-deck center-block">
          <div class="card">
            <img src="resources/fotos/tel-icone.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Telefone para contato:</h5>
              <p class="card-text">(021)3234-5678.</p>
            </div>
          </div>
          <div class="card">
            <img src="resources/fotos/email.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">E-mail para contato:</h5>
              <p class="card-text">quemtftp@gmail.com</p>
            </div>
          </div>
          </div>
        </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
