<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel ="stylesheet" type="text/css" media="screen" href="resources/css/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Cadastre seu restaurante</title>
    </head>
    <body id="login-page">
        <!--NAVBAR-->
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand" href="index">
              <img id="foto" src="resources/fotos/logoQTFTP.png" width="90" height="50" alt="">
            </a>
          </nav>
          <br>
          <br>
          <br>
          <!--Tela de Cadastro-->
          <div class="row2">
            <div class="col-7">
              <div class="container2">
                  <form action="CadastroRealizadoRestaurante" method="post">

                  <div class="row2">
                    <div class="col-5">
                        <h3>Cadastre seu Restaurante!</h3>
                        <label for="fname"><i class="fa fa-user"></i> Razão Social</label>
                        <input type="text" id="rsozial" name="razaoSocial" placeholder="">
                        <label for="cnpj"><i class="fa fa-envelope"></i> CNPJ</label>
                        <input type="text" id="cnpj" name="cnpj" placeholder="">
                        <label for="endereco"><i class="fa fa-address-card-o"></i> Endereço</label>
                        <input type="text" id="endereco" name="endereco" placeholder="">
                        <label for="senha"><i class="fa fa-address-card-o"></i> Senha</label>
                        <input type="text" id="senha" name="senha" placeholder="">
                        <div class="row2">
                            <div class="col-5">
                                <label for="dinheiro">Dinheiro</label>
                                <input type=checkbox id="dinheiro" name="opcaoPagamento" value="dinheiro">
                            </div>
                            <div class="col-5">
                                <label for="cartao">Cartão Credito</label>
                                <input type=checkbox id="cartao" name="opcaoPagamento" value="cartaocredito">
                            </div>
                            <div class="col-5">
                                <label for="cartao">Cartão Débito</label>
                                <input type=checkbox id="cartao" name="opcaoPagamento" value="cartaodebito">
                            </div>
                        </div>
                    </div>
                    <input type="submit" value="Cadastrar" class="btnc">
                </form>
              </div>
            </div>
          </div>




        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
  </html>